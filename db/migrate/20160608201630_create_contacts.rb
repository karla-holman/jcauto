class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.references :customer, index: true
    	t.datetime :date
    	t.text :notes
    	t.string :method
    	t.boolean :needs_action
    	t.boolean :resolved
      t.timestamps null: false
    end

    add_foreign_key :contacts, :customers
  end
end
