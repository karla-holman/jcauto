class AddCommercialToAddress < ActiveRecord::Migration
  def change
  	add_column :spree_addresses, :commercial, :boolean, :default => false
  end
end
