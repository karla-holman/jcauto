class Admin::ServicePriceListsController < AdminController
  before_action :set_service, only: [:index, :show, :edit, :update, :destroy]
  before_action :set_price_list, only: [:show, :edit, :update, :destroy]

  def edit
  	
  end

  def show
    @service_price_list = ServicePriceList.find(params[:id])
  end

  def index
  	@service_price_lists = ServicePriceList.all
  end

  def update
    respond_to do |format|
      if @service_price_list.update_attributes(service_price_list_params)
        flash[:success] = "Service Price List update was successfully updated."
        format.html { redirect_to admin_service_service_price_list_path(@service, @service_price_list) }
        format.json { render :show, status: :ok, location: @service_price_list }
      else
        format.html { render :show, location: @service_price_list }
        format.json { render json: @service_price_list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_service_items_positions
    ActiveRecord::Base.transaction do
      params[:positions].each do |id, index|
        ServiceItem.where(id: id).update_all(position: index)
      end
    end

    respond_to do |format|
      format.html { redirect_to admin_service_price_list_url(params[:id]) }
      format.js { render text: 'Ok' }
    end
  end

  private

  def set_service
  	@service = Service.find(params[:service_id])
  end

  def set_price_list
    @service_price_list = ServicePriceList.find(params[:id])
  end

  def service_price_list_params
    params.require(:service_price_list).permit(:id, :name, service_items_attributes: [:id, :name, :price, :core_price, :core_name, :service_application_id, :alternate_price])
  end
end