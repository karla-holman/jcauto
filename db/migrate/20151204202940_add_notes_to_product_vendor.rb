class AddNotesToProductVendor < ActiveRecord::Migration
  def change
  	add_column :spree_product_vendors, :notes, :text
  end
end
