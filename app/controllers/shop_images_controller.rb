#Controls the images for the users of the website

class ShopImagesController < ApplicationController
  def show
     @shop_image = ShopImage.all 
  end

  def index
    @shop_images = ShopImage.all
  end
  #please work this time
  private
  
  def set_shop_image
      @shop_image = ShopImage.find(params[:id])
  end
  
  def shop_image_params
      params[:shop_image]
  end
  
end
