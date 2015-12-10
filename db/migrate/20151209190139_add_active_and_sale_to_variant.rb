class AddActiveAndSaleToVariant < ActiveRecord::Migration
  def change
  	add_column :spree_variants, :active, :boolean
  end
end
