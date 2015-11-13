class CreateProductApplications < ActiveRecord::Migration
  def change
    create_table :product_applications do |t|
    	t.belongs_to :product
    	t.belongs_to :application
      	t.timestamps null: false
    end
  end
end
