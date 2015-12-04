class AddFaxToVendor < ActiveRecord::Migration
  def change
  	add_column :spree_vendors, :fax, :string
  end
end
