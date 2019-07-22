class Admin::ShopImagesController < AdminController
  before_action :set_shop_image, only: [:show, :edit, :update, :destroy]

  # GET /shop_image
  # GET /shop_image.json
  def index
    @shop_images = ShopImage.all
  end
  
  def show
  end


  # GET /shop_image/new
  def new
    @shop_image = ShopImage.new
  end

  # GET /shop_image/1/edit
  def edit
    @shop_image = ShopImage.find(params[:id])
  end

  # POST /shop_image
  # POST /shop_image.json
  def create
    @shop_image = ShopImage.new(shop_image_params)

    respond_to do |format|
      if @shop_image.save
        flash[:success] = "The shop image was successfully created."
        format.html { redirect_to admin_shop_images_path }
        format.json { render :show, status: :created, location: @shop_image }
      else
        format.html { render :new }
        format.json { render json: @shop_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_image/1
  # PATCH/PUT /shop_image/1.json
  def update
    respond_to do |format|
      if @shop_image.update(shop_image_params)
        flash[:success] = "The shop image was successfully updated."
        format.html { redirect_to admin_shop_images_path }
        format.json { render :show, status: :ok, location: @shop_image }
      else
        format.html { render :edit }
        format.json { render json: @shop_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_image/1
  # DELETE /shop_image/1.json
  def destroy
    @shop_image.destroy
    respond_to do |format|
      flash[:success] = 'The shop image was successfully destroyed.'
      format.html { redirect_to admin_shop_images_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_image
      @shop_image = ShopImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_image_params
      params.require(:shop_image).permit(:description,:attachment)
    end
end
