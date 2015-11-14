class ChangeBrandToMake < ActiveRecord::Migration
  def change
  		rename_column :spree_models, :brand_id, :make_id
  		rename_column :spree_applications, :brand_id, :make_id
  end
end
