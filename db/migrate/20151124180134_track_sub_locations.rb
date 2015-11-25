class TrackSubLocations < ActiveRecord::Migration
  def change
  	remove_column :spree_products, :location
  	add_column :spree_stock_items, :sub_location, :string
  end
end
