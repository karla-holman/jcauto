class AddVendorCountry < ActiveRecord::Migration
  def change
  	add_column :spree_vendors, :country, :string
  end
end
