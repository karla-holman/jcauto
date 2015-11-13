class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
	  t.belongs_to :brand
	  t.belongs_to :model
	  t.integer :start_year
	  t.integer :end_year
      t.timestamps null: false
    end
  end
end
