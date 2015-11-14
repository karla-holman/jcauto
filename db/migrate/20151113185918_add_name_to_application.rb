class AddNameToApplication < ActiveRecord::Migration
  def change
  	add_column :spree_product_applications, :name, :string
  end
end
