class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :phone
    	t.string :email
    	t.boolean :in_quickbooks
    	t.string :vehicle
    	t.text :notes
      t.timestamps null: false
    end
  end
end