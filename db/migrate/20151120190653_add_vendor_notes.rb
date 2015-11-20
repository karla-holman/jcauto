class AddVendorNotes < ActiveRecord::Migration
  def change
  	add_column :spree_vendors, :notes, :text
  end
end
