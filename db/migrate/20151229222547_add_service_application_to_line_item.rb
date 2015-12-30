class AddServiceApplicationToLineItem < ActiveRecord::Migration
  def change
  	remove_column :service_applications, :service_item_id
  	add_belongs_to :service_items, :service_applications
  end
end
