class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.text :name
      	t.text :description
      	t.text :thumb
      	t.boolean :our_car
      	t.boolean :current
		t.timestamps null: false
      	t.timestamps null: false
    end
  end
end
