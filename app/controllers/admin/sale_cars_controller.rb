class Admin::SaleCarsController < AdminController
  before_action :set_sale_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @sale_cars = SaleCar.all
  end

  # GET /cars/new
  def new
    @sale_car = SaleCar.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @sale_car = SaleCar.new(sale_car_params)

    respond_to do |format|
      if @sale_car.save
        flash[:success] = "Sale Car was successfully created."
        format.html { redirect_to admin_sale_cars_path }
        format.json { render :show, status: :created, location: @sale_car }
      else
        format.html { render :new }
        format.json { render json: @sale_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @sale_car.update(sale_car_params)
        flash[:success] = "Car was successfully updated."
        format.html { redirect_to admin_sale_cars_path }
        format.json { render :show, status: :ok, location: @sale_car }
      else
        format.html { render :edit }
        format.json { render json: @sale_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @sale_car.destroy
    respond_to do |format|
      flash[:success] = 'Sale Car was successfully destroyed.'
      format.html { redirect_to admin_sale_cars_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale_car
      @sale_car = SaleCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_car_params
      params.require(:sale_car).permit(:name, :attachment, :description, :current)
    end
end
