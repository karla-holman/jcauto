class CustomerCarsController < ApplicationController
  before_filter :authorized?
  before_action :set_customer_car, :only => [:update, :edit]
  before_action :set_ransack, :only => [:update, :create, :destroy, :index]

  def new
    @customer_car = CustomerCar.new
  end

  def create
    @customer_car = CustomerCar.new(customer_car_params)
    @customer_car.user_id = spree_current_user.id
    if @customer_car.save
      flash[:success] = "Your Car was added successfully!"
      @customer_cars = CustomerCar.where(user_id: spree_current_user)
      render "index"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render "new"
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @customer_car.update(customer_car_params)
        flash[:success] = "Your car was successfully updated."
        format.html { redirect_to customer_cars_path }
        format.json { render :index, status: :ok, location: @customer_car }
      else
        format.html { render :edit }
        format.json { render json: @customer_car.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    CustomerCar.find(params[:id]).destroy
    flash[:success] = "Car deleted"
    @customer_cars = CustomerCar.where(user_id: spree_current_user)
    render "index"
  end

  def index
    # lazyoading other models here (via includes) may result in an invalid query
    # e.g. SELECT  DISTINCT DISTINCT "spree_orders".id, "spree_orders"."created_at" AS alias_0 FROM "spree_orders"
    # see https://github.com/spree/spree/pull/3919
    @customer_cars = @search.result(distinct: true).
      page(params[:page]).
      per(10)
  end

  private
    # ensure user logged in
    def authorized?
      unless spree_current_user
        flash[:error] = "You are not authorized to view that page. Please log in to continue."
        redirect_to spree_login_path
      end
    end

    def set_customer_car
      @customer_car = CustomerCar.find(params[:id])
    end

    def set_ransack
      @search = CustomerCar.ransack(params[:q], :user_id_eq => spree_current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_car_params
      params.require(:customer_car).permit(:name, :user_id, :make_id, :model_id, :attachment, :description, :year)
    end
end
