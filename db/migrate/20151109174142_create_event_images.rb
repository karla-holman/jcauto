class CreateEventImages < ActiveRecord::Migration
  def change
    create_table :event_images do |t|
    	t.belongs_to :event, index: true
		t.text :image_path
		t.text :description
      	t.timestamps null: false
    end
  end
end
