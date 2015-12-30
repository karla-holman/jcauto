class AddBelongsToKeyOnServiceItem < ActiveRecord::Migration
  def change
  	add_belongs_to :services_items, :services_price_list
  end
end
