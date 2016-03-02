class FixCustomerCarNameAgain < ActiveRecord::Migration
  def change
  	rename_column :customer_cars, :spree_user_id, :user_id
	rename_column :customer_cars, :spree_make_id, :make_id
	rename_column :customer_cars, :spree_model_id, :model_id
  end
end
