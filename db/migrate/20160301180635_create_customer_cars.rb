class CreateCustomerCars < ActiveRecord::Migration
  def change
    create_table :customer_cars do |t|
    	t.belongs_to :spree_users
    	t.string :name
    	t.belongs_to :spree_makes
    	t.belongs_to :spree_models
    	t.integer :year
    	t.text :description
      t.timestamps null: false
    end

    add_attachment :customer_cars, :attachment
    add_attachment :spree_users, :profile_pic
    add_column :spree_users, :receive_emails, :boolean
  end
end
