class Admin::ServiceImagesController < AdminController
	before_action :load_service

	def new
		@image = ServiceImage.new
	end

	def create
    @image = @service.service_images.new(service_image_params)
    if @image.save
    	flash[:success] = "Image added successfully!"
      render "index"
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      flash[:error] = "Image unable to be saved.\n"
      flash[:error] += @image.errors.full_messages.join("\n")
      render "new"
    end
  end

  def edit
  	@image = ServiceImage.find(params[:id])
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @image = ServiceImage.find(params[:id])
    respond_to do |format|
      if @image.update(car_image_params)
        flash[:success] = "Car Image was successfully updated."
        format.html { redirect_to admin_car_car_images_path(@image.car) }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	ServiceImage.find(params[:id]).destroy
    flash[:success] = "Image deleted"
    render "index"
  end

  def index
    @service = Service.find(params[:service_id])
  end

	private

	def load_service
    @service = Service.find(params[:service_id])
  end

  def car_image_params
	  params.require(:service_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description)
	end
end
