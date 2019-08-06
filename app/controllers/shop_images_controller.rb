#Controls the images for the users of the website
#I have found out how to call out the temp file each time allowing for the opening of the spreadsheet.
#Trying to send the data to the new product controller
#when using the redirect_to do I need the format.html
class ShopImagesController < ApplicationController
  def show
     @shop_image = ShopImage.all 
  end

  def index
    @shop_images = ShopImage.all
  end

  private
  
  def set_shop_image
      @shop_image = ShopImage.find(params[:id])
  end
  
  def shop_image_params
      params[:shop_image]
  end
  
end
