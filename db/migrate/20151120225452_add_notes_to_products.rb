class AddNotesToProducts < ActiveRecord::Migration
  def change
  	add_column :spree_products, :notes, :text
  	add_column :spree_products, :location, :string

  	add_column :spree_prices, :core, :decimal, :precision => 8, :scale => 2
  end
end
