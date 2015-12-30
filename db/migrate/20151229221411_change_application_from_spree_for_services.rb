class ChangeApplicationFromSpreeForServices < ActiveRecord::Migration
  def change
  	rename_column :service_applications, :spree_application_id, :application_id
  end
end
