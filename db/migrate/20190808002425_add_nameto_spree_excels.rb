class AddNametoSpreeExcels < ActiveRecord::Migration
  def change
      add_column :spree_excels, :part_num, :string
      add_column :spree_excels, :price, :decimal
      add_column :spree_excels, :available_on, :datetime
      add_column :spree_excels, :shipping_category, :string
      add_column :spree_excels, :description, :text
      add_column :spree_excels, :Productlength, :decimal
      add_column :spree_excels, :Productwidth, :decimal
      add_column :spree_excels, :Productheight, :decimal
      add_column :spree_excels, :Productweight, :decimal
      add_column :spree_excels, :LastPurchasecost, :decimal
      add_column :spree_excels, :CrossReference, :string
      add_column :spree_excels, :Application, :string
      add_column :spree_excels, :CastingNum, :integer
      add_column :spree_excels, :CoreCharge, :decimal
      add_column :spree_excels, :ForSale, :string
      add_column :spree_excels, :OnlineStore, :string
      add_column :spree_excels, :IsActive, :string
      add_column :spree_excels, :Location, :string
      add_column :spree_excels, :Sublocation, :string
      add_column :spree_excels, :Quantity, :integer
  end
end
