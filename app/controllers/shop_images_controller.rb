#Controls the images for the users of the website

class ShopImagesController < ApplicationController
  def show
     @shop_image = ShopImage.all 
  end

  def index
    @shop_images = ShopImage.all
  end
  #If I can just locate the location of the saved file I will be able to do what I need to do.
  #Is the file being sent to AWS?
  #If so how can I call out this file allowing me to open it.
  #What am I missing about the saving process?
  #Was there a parameter set somewhere specifying how to save the excel upload?
  private
  
  def set_shop_image
      @shop_image = ShopImage.find(params[:id])
  end
  
  def shop_image_params
      params[:shop_image]
  end
  
end
