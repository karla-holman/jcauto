class AddAlternatePriceToServices < ActiveRecord::Migration
  def change
  	add_column :service_items, :alternate_price, :text
  	change_column :service_items, :name, :text
  end
end
