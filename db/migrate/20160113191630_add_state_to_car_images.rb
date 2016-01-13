class AddStateToCarImages < ActiveRecord::Migration
  def change
  	add_column :car_images, :state, :integer, default: 0
  end
end
