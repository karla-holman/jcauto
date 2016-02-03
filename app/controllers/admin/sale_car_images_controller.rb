class Admin::SaleCarImagesController < AdminController
	before_action :load_edit_data

	def new
		@image = SaleCarImage.new
	end

	def create
    @image = @sale_car.sale_car_images.new(sale_car_image_params)
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
  	@image = SaleCarImage.find(params[:id])
  end

  def destroy
  	SaleCarImage.find(params[:id]).destroy
    flash[:success] = "Image deleted"
    render "index"
  end

  def index
    @sale_car = SaleCar.find(params[:sale_car_id])
  end

	private

	def load_edit_data
    @sale_car = SaleCar.find(params[:sale_car_id])
  end

  def sale_car_image_params
	  params.require(:car_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description)
	end
end
