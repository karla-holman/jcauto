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
  #Could the saving due to the create function make the saving using the save
  # function a nil point?
  #The find tries to send the website to a new page.
  #How is the data saved to aws? If that is in fact where it is being sent.
  #I will now try to obtain the object from the AWS bucket
  #The AWS trick might just do it. Another day another learning moment.

  #added the require method for aws
  #now trying to read the file into the website
  #What is the issue with the bucket can I avoid using the bucket or is this what paperclip uses to load the files or can I avoid using AWS
  #Given that I am using aws-sdk version 1 I cannot use the aws callout it is the improper callout.

  #I may need to upgrade to version 2 of AWS-SDK and try to not wreck everything else that is going on with the program
  #I have fixed the issue with the callout due to the version of the Ruby gem which is being used.
  #I have added the gets to see how this handles downloads to the app allowing me to open the spreadsheet.
  private
  
  def set_shop_image
      @shop_image = ShopImage.find(params[:id])
  end
  
  def shop_image_params
      params[:shop_image]
  end
  
end
