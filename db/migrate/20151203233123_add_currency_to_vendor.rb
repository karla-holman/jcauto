class AddCurrencyToVendor < ActiveRecord::Migration
  def change
  	add_column :spree_vendors, :currency, :string
  end
end
