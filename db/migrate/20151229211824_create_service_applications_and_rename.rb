class CreateServiceApplicationsAndRename < ActiveRecord::Migration
  def change
    create_table :service_applications do |t|
	    t.belongs_to  :service_item
	    t.belongs_to  :spree_application
	    t.integer  :start_year
	    t.integer  :end_year
	    t.string   :name
	    t.text     :notes
    end

    remove_column :service_items, :application_id
    rename_column :service_items, :services_price_list_id, :service_price_list_id
  end
end
