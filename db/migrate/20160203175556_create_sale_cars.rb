class CreateSaleCars < ActiveRecord::Migration
  def change
    create_table :sale_cars do |t|
      t.text     :name
	    t.text     :description
	    t.boolean  :current
      t.timestamps null: false
    end

    add_attachment :sale_cars, :attachment
  end
end
