class AddPositionToServices < ActiveRecord::Migration
  def change
  	add_column :car_images, :position, :integer
  	add_column :event_images, :position, :integer
  	add_column :sale_car_images, :position, :integer
  	add_column :service_items, :position, :integer
  end
end
