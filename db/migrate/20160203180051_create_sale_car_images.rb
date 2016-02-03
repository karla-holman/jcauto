class CreateSaleCarImages < ActiveRecord::Migration
  def change
    create_table :sale_car_images do |t|
    	t.belongs_to :sale_cars
    	t.text     	 :description
      t.timestamps null: false
    end

    add_attachment :sale_car_images, :attachment
  end
end
