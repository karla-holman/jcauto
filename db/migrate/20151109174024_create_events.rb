class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.text :name
      	t.text :description
      	t.text :thumb
      	t.text :location
      	t.date :event_date
      	t.boolean :past_event
      	t.timestamps null: false
    end
  end
end
