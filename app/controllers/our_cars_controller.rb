class OurCarsController < ApplicationController
  before_action :set_our_car, only: [:show, :edit, :update, :destroy]

  # GET /our_cars
  # GET /our_cars.json
  def index
    @our_cars = OurCar.all
  end

  # GET /our_cars/1
  # GET /our_cars/1.json
  def show
    @our_car = OurCar.find_by_id(params[:id])
  end

  # GET /our_cars/new
  def new
    @our_car = OurCar.new
  end

  # GET /our_cars/1/edit
  def edit
  end

  # POST /our_cars
  # POST /our_cars.json
  def create
    @our_car = OurCar.new(our_car_params)

    respond_to do |format|
      if @our_car.save
        format.html { redirect_to @our_car, notice: 'Our car was successfully created.' }
        format.json { render :show, status: :created, location: @our_car }
      else
        format.html { render :new }
        format.json { render json: @our_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /our_cars/1
  # PATCH/PUT /our_cars/1.json
  def update
    respond_to do |format|
      if @our_car.update(our_car_params)
        format.html { redirect_to @our_car, notice: 'Our car was successfully updated.' }
        format.json { render :show, status: :ok, location: @our_car }
      else
        format.html { render :edit }
        format.json { render json: @our_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /our_cars/1
  # DELETE /our_cars/1.json
  def destroy
    @our_car.destroy
    respond_to do |format|
      format.html { redirect_to our_cars_url, notice: 'Our car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_our_car
      @our_car = OurCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def our_car_params
      params[:our_car]
    end
end
