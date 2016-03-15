class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @services = Service.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    # params[:q] = {} if params[:q].blank?

  	@service_applications = []
  	@price_lists = @service.service_price_lists
  	@price_lists.each do |price_list|
  		price_list.service_items.order("position ASC").each do |item|
  			if item.service_application && (!@service_applications.include? item.service_application)
  				@service_applications << item.service_application
  			end
  		end
  	end

    # @search = @service_applications.ransack(params[:q])
    # @activities = @search.result.order('created_at desc').page(params[:page]).per(Spree::Config[:admin_products_per_page])

  	if params[:my_service_application]
      if params[:my_service_application][:my_service_application_id]
  		  @service_app_id = params[:my_service_application][:my_service_application_id].to_i
      end
      if params[:my_service_application][:my_service_price_list_id]
        @service_price_list_id = params[:my_service_application][:my_service_price_list_id].to_i
      end
  	end
  end

  # GET /cars/new
  def new
    @service = Service.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit, notice: 'Errors uploading the service.' }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to service_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params[:service]
    end
end
