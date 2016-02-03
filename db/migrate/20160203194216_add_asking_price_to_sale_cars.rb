class AddAskingPriceToSaleCars < ActiveRecord::Migration
  def change
  	add_column :sale_cars, :sale_price, :decimal
  end
end
