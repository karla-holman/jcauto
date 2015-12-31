class AddCoreChargeToServices < ActiveRecord::Migration
  def change
  	rename_column :service_items, :description, :core_name
  	add_column :service_items, :core_price, :decimal
  end
end
