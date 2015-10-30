class AddTaxonImage < ActiveRecord::Migration
  def change
  	add_column :spree_taxons, :image_path, :string
  end
end
