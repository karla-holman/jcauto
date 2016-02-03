class AddPriceToSaleCar < ActiveRecord::Migration
  def change
  	add_column :sale_cars, :price, :decimal
  end
end
