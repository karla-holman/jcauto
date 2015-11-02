class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string :name
      	t.text :description
      	t.string :thumb
		t.timestamps null: false
		t.timestamps null: false
    end
  end
end
