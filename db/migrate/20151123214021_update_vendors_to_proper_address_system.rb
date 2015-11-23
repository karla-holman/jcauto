class UpdateVendorsToProperAddressSystem < ActiveRecord::Migration
  def change
  	remove_column :spree_vendors, :country, :string
  	rename_column :spree_vendors, :line_1, :address1
  	rename_column :spree_vendors, :line_2, :address2
  	rename_column :spree_vendors, :state, :state_name
  	rename_column :spree_vendors, :zip, :zipcode
  	add_column :spree_vendors, :country_id, :integer
  	add_column :spree_vendors, :state_id, :integer

	add_index "spree_vendors", ["country_id"], name: "index_spree_vendors_on_country_id", using: :btree
	add_index "spree_vendors", ["state_id"], name: "index_spree_vendors_on_state_id", using: :btree
  end
end



