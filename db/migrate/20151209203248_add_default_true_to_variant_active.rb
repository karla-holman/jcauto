class AddDefaultTrueToVariantActive < ActiveRecord::Migration
  def change
  	change_column :spree_variants, :active, :boolean, :default => true
  end
end
