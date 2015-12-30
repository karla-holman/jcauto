class AddServicesPricesAndServiceItems < ActiveRecord::Migration
  def change
  	create_table :services do |t|
      t.string :name
      t.string :description
      t.text :description_long
    end

    create_table :services_price_lists do |t|
      t.string :name
      t.belongs_to :services
    end

    create_table :services_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.belongs_to :application
    end
  end
end
