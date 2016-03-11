class Admin::ServicesController < AdminController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def edit
  	
  end

  def show

  end

  def index
  	@services = Service.all
  end

  private

  def set_service
  	@service = Service.find(params[:id])
  end
 end