# Create Zones
# What other zones do we need?

# Create Tax Category (group products in same tax group)
auto_tax_category = Spree::TaxCategory.create :name => "Auto Parts", :description => "Tax category for vintage automobile parts", :is_default => true, :tax_code => "CAR_TAX"

# Create Tax Rates
us_goods_rate = Spree::TaxRate.create :amount => BigDecimal.new("0.08"), :zone_id => 2, :tax_category_id => auto_tax_category.id, :included_in_price => false, :name => "Taxable US Goods", :show_rate_in_label => true

# Create Shipping Category
default = Spree::ShippingCategory.create :name => "Default"
over_size = Spree::ShippingCategory.create :name => "Over-sized"

# Create Shipping Methods (options when customer reaches checkout)
ups_two_day = Spree::ShippingMethod.create :name => "UPS Two-Day", :tracking_url => "http://wwwapps.ups.com/WebTracking/track?track=yes&trackNums=:tracking", :admin_name => "UPS-2-DAY", :tax_category_id => auto_tax_category.id, :code => "UPS2DAY"

# Create Body Type Taxonomies
part_number = Spree::Property.create :name => "Part Number", :presentation => "Part Number"
cast_number = Spree::Property.create :name => "Cast Number", :presentation => "Cast Number"

# Create Test Part
water_pump = Spree::Product.create :name => "1957-58 392 Hemi, 354 Poly Water Pump", 
								   :description => "Water pump for all 1957 Chrysler New Yorker - Saratoga - Town/Country - Windsor - 300C - 300D and all 1957-58 Imperial.",
								   :available_on => DateTime.new(2015,1,1),
								   :slug => "1957-58-392-hemi-354-poly-water-pump",
								   :meta_description => "",
								   :meta_keywords => "1957, 1958, Chrysler,  Imperial",
								   :tax_category_id => auto_tax_category.id, 
								   :shipping_category_id => default.id,
								   :promotionable => true




