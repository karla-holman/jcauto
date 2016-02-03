class ChangeBelongsToColumnName < ActiveRecord::Migration
  def change
  	rename_column :sale_car_images, :sale_cars_id, :sale_car_id
  end
end
