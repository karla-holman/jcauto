class CarImagesController < ApplicationController
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
      render "new"
    end
  end

  def edit
  	@image = CarImage.find(params[:car_image_id])
  end

  def destroy
  	CarImage.find(params[:car_image_id]).destroy
    flash[:success] = "Image deleted"
    render "index"
  end


	private

	def load_edit_data
    @car = Car.find(params[:car_id])
  end

  def car_image_params
	  params.require(:car_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description)
	end
end
