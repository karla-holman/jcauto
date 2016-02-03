class SaleCarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars/1
  # GET /cars/1.json
  def show

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @sale_car = SaleCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params[:sale_car]
    end
end
