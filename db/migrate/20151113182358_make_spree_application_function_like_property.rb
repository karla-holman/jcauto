class MakeSpreeApplicationFunctionLikeProperty < ActiveRecord::Migration
  def change
  	remove_column :spree_applications, :start_year
  	remove_column :spree_applications, :end_year

  	add_column :spree_product_applications, :start_year, :integer
  	add_column :spree_product_applications, :end_year, :integer
  
  	rename_table :spree_brands, :spree_makes

  	add_column :spree_models, :start_year, :integer
  	add_column :spree_models, :end_year, :integer
  end
end
