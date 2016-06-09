class ChangeCustomerNameFirstLastFull < ActiveRecord::Migration
  def change
  	rename_column :customers, :name, :first_name
  	add_column :customers, :last_name, :string
  	add_column :customers, :full_name, :string
  end
end
