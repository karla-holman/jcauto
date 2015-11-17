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
cross_reference = Spree::Property.create :name => "Cross Reference", :presentation => "Cross Reference"

# Create Test Part
water_pump = Spree::Product.create :name => "1957-58 392 Hemi, 354 Poly Water Pump", 
								   :description => "Water pump for all 1957 Chrysler New Yorker - Saratoga - Town/Country - Windsor - 300C - 300D and all 1957-58 Imperial.",
								   :available_on => DateTime.new(2015,1,1),
								   :slug => "1957-58-392-hemi-354-poly-water-pump",
								   :tax_category_id => auto_tax_category.id, 
								   :shipping_category_id => default.id,
								   :promotionable => true

tie_rod = Spree::Product.create :name => "Outer Tie Rod End - Long Wheel Base", 
								 :description => "Fits right and left",
								 :available_on => DateTime.new(2015, 1, 1),
								 :slug => "outer-tie-rod-end-lwb",
								 :tax_category_id => auto_tax_category.id, 
								 :shipping_category_id => default.id,
								 :promotionable => true

# Create Product Properties
# Part numbers
water_part_num = Spree::ProductProperty.create :value => "1692799",
											   :product_id => water_pump.id,
											   :property_id => part_number.id

tie_rod_part_num = Spree::ProductProperty.create :value => "1692688",
												 :product_id => tie_rod.id,
												 :property_id => part_number.id

# Cross References
tie_rod_cross_ref = Spree::ProductProperty.create :value => "2279992, 2084353",
												  :product_id => tie_rod.id,
												  :property_id => cross_reference.id