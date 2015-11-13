class MoveApplicationTablesToSpree < ActiveRecord::Migration
  def change
  	rename_table :applications, :spree_applications
  	rename_table :brands, :spree_brands
  	rename_table :models, :spree_models
  	rename_table :product_applications, :spree_product_applications
  end
end
