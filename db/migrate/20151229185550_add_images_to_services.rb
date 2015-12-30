class AddImagesToServices < ActiveRecord::Migration
  def change
    create_table :service_images do |t|
    	t.belongs_to :service, index: true
  		t.text :image_path
  		t.text :description
  		t.boolean :main_image
  		t.boolean :thumb_image
      t.timestamps null: false
    end
  end
end
