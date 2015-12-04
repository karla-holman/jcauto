class MoveVendorFromProductToVariant < ActiveRecord::Migration
  def change
  	rename_column :spree_product_vendors, :product_id, :variant_id
  end
end
