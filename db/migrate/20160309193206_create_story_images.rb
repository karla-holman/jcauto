class CreateStoryImages < ActiveRecord::Migration
  def change
    create_table :story_images do |t|
    	t.belongs_to :story, index: true
			t.text :description
      t.timestamps null: false
    end

    add_attachment :story_images, :attachment
  end
end
