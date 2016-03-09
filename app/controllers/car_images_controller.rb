class CarImagesController < ApplicationController
	before_action :load_edit_data

	private

	def load_edit_data
    @car = Car.find(params[:car_id])
  end

  def car_image_params
	  params.require(:car_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description, :state)
	end
end
