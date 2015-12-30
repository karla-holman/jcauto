class FixServiceColumnNames < ActiveRecord::Migration
  def change
  	rename_table :services_items, :service_items
  	rename_table :services_price_lists, :service_price_lists
  	rename_column :service_price_lists, :services_id, :service_id
  end
end
