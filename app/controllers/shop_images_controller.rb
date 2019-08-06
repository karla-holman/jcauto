#Controls the images for the users of the website
#I have found out how to call out the temp file each time allowing for the opening of the spreadsheet.
#Now that I have opened the spreadsheet I will focus on sending this data to the controller to create the product
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
