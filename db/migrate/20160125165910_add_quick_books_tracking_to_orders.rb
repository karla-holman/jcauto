class AddQuickBooksTrackingToOrders < ActiveRecord::Migration
  def change
  	add_column :spree_orders, :in_quickbooks, :boolean, :default => false
  end
end
