#Controls the images for the users of the website 
#allowing them to see the shop images that have been added to the webpage.
#Another comment to allow me to push heroku hopefully. Reading further on how to
#upload and get the file. Now seeing if I get the TypeError again after getting rid of the read portion of the open spreadsheet.


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
