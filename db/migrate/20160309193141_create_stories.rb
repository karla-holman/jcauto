class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
    	t.string :name
    	t.string :user_name
    	t.string :vehicle
    	t.integer :make_id
    	t.integer :model_id
    	t.integer :year
    	t.text :story_body
      t.timestamps null: false
      t.timestamps null: false
    end

    add_attachment :stories, :attachment
  end
end
