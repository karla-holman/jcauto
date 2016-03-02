class FixCustomerCarName < ActiveRecord::Migration
  def change
  	rename_column :customer_cars, :spree_users_id, :spree_user_id
	rename_column :customer_cars, :spree_makes_id, :spree_make_id
	rename_column :customer_cars, :spree_models_id, :spree_model_id
  end
end
