class AddApplicationName < ActiveRecord::Migration
  def change
  	add_column :spree_applications, :name, :string
  end
end
