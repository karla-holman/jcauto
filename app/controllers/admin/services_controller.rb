class Admin::ServicesController < AdminController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def edit
  	
  end

  def show

  end

  def index
  	@services = Service.all
  end

  def update
    respond_to do |format|
      if @service.update(service_params)
        flash[:success] = "Service was successfully updated."
        format.html { redirect_to admin_services_path }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private

  def set_service
  	@service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description)
  end
end