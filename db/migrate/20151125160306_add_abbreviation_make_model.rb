class AddAbbreviationMakeModel < ActiveRecord::Migration
  def change
  	add_column :spree_makes, :abbreviation, :string
  	add_column :spree_models, :abbreviation, :string
  end
end
