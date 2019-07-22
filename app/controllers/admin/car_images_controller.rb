class Admin::CarImagesController < AdminController
	before_action :load_edit_data

	def new
		@image = CarImage.new
	end

	def create
    @image = @car.car_images.new(car_image_params)
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
  	@image = CarImage.find(params[:id])
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @image = CarImage.find(params[:id])
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
  	CarImage.find(params[:id]).destroy
    flash[:success] = "Image deleted"
    render "index"
  end

  def index
    @car = Car.find(params[:car_id])
  end

	private
#Why is load_edit_data private and the index not when they do the exact same thing?
	def load_edit_data
    @car = Car.find(params[:car_id])
  end

  def car_image_params
	  params.require(:car_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description, :state)
	end
end
