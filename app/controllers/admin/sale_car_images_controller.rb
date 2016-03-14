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

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    @image = SaleCarImage.find(params[:id])
    respond_to do |format|
      if @image.update(sale_car_image_params)
        flash[:success] = "Sale Car Image was successfully updated."
        format.html { redirect_to admin_sale_car_sale_car_images_path(@image.sale_car) }
        format.json { render :show, status: :ok, location: @image.sale_car }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
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
	  params.require(:sale_car_image).permit(:attachment, :attachment_file_name, :attachment_content_type, :attachment_file_size, :attachment_updated_at, :description)
	end
end
