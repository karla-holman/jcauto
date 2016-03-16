class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars/1
  # GET /cars/1.json
  def show
    @title = "#{@car.name} - JC Auto Restoration, Inc."
    @is_our_car = @car.our_car 

    # determine if this is one of our cars or a project
    if @is_our_car
      @cars = Car.where(our_car: true).order(completed_date: :desc)
    else 
      @cars = Car.where(our_car: false).order(completed_date: :desc)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params[:car]
    end
end
