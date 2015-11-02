require 'test_helper'

class OurCarsControllerTest < ActionController::TestCase
  setup do
    @our_car = our_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:our_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create our_car" do
    assert_difference('OurCar.count') do
      post :create, our_car: {  }
    end

    assert_redirected_to our_car_path(assigns(:our_car))
  end

  test "should show our_car" do
    get :show, id: @our_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @our_car
    assert_response :success
  end

  test "should update our_car" do
    patch :update, id: @our_car, our_car: {  }
    assert_redirected_to our_car_path(assigns(:our_car))
  end

  test "should destroy our_car" do
    assert_difference('OurCar.count', -1) do
      delete :destroy, id: @our_car
    end

    assert_redirected_to our_cars_path
  end
end
