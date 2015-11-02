class CreateOurCarImages < ActiveRecord::Migration
  def change
    create_table :our_car_images do |t|
		t.belongs_to :our_car, index: true
		t.text :image_path
		t.text :description
		t.timestamps null: false
    end
  end
end
