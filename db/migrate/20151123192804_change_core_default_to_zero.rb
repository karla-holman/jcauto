class ChangeCoreDefaultToZero < ActiveRecord::Migration
  def change
  	change_column :spree_prices, :core, :decimal, :default => 0
  end
end
