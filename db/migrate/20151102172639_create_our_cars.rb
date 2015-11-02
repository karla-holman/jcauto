class CreateOurCars < ActiveRecord::Migration
  def change
    create_table :our_cars do |t|
    	t.text :name
      	t.text :description
      	t.text :thumb
		t.timestamps null: false
    end
  end
end
