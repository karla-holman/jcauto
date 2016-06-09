class AddCustomerNeedAction < ActiveRecord::Migration
  def change
  	add_column :customers, :needs_action, :boolean
  end
end
