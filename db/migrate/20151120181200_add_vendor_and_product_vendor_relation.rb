class AddVendorAndProductVendorRelation < ActiveRecord::Migration
  def change
  	create_table :spree_vendors do |t|
      t.string   :name
      t.string   :address
      t.string   :phone
      t.string   :email
      t.string   :website
      t.datetime :created_at
    end

    create_table :spree_product_vendors do |t|
      t.belongs_to 	:product
      t.belongs_to 	:vendor
      t.string   	:vendor_part_number
      t.string   	:vendor_price
    end
  end
end
