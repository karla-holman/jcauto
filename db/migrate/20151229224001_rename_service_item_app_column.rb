class RenameServiceItemAppColumn < ActiveRecord::Migration
  def change
  	rename_column :service_items, :service_applications_id, :service_application_id
  end
end
