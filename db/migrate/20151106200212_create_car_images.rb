class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
    	t.belongs_to :car, index: true
		t.text :image_path
		t.text :description
      	t.timestamps null: false
    end
  end
end
