class CreateShopImages < ActiveRecord::Migration
  def change
    create_table :shop_images do |t|
      t.string :description
      t.attachment :attachment

      t.timestamps null: false
    end
  end
end
