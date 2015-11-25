class AddNotesToVariant < ActiveRecord::Migration
  def change
  	add_column :spree_variants, :notes, :text
  end
end
