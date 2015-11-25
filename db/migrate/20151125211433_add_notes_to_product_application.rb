class AddNotesToProductApplication < ActiveRecord::Migration
  def change
  	add_column :spree_product_applications, :notes, :text
  end
end
