class AddVendorContactName < ActiveRecord::Migration
  def change
  	add_column :spree_vendors, :contact_name, :string
  	add_column :spree_vendors, :city, :string
  	add_column :spree_vendors, :state, :string
  	add_column :spree_vendors, :zip, :string
  	add_column :spree_vendors, :line_2, :string
  	rename_column :spree_vendors, :address, :line_1
  end
end
