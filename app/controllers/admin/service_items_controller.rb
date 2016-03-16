class Admin::ServiceItemsController < AdminController

  def destroy
    service_item = ServiceItem.find(params[:id])
    service_item.destroy
    render :text => nil
  end

end