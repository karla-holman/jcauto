#---------------------------------------------------------------------------
# Create makes and models
#---------------------------------------------------------------------------

# Create Body Type Taxonomies
make1 = Spree::Make.create :name => "Chrysler"
make2 = Spree::Make.create :name => "Dodge"
make3 = Spree::Make.create :name => "Plymouth"
make4 = Spree::Make.create :name => "Desoto"
make5 = Spree::Make.create :name => "Imperial"

# Chrysler Models
model1 = make1.models.create :name => "300B", :start_year => "1956", :end_year => "1956" 
model2 = make1.models.create :name => "300C", :start_year => "1957", :end_year => "1957"
model3 = make1.models.create :name => "300D", :start_year => "1958", :end_year => "1958"
model4 = make1.models.create :name => "300E", :start_year => "1959", :end_year => "1959"
make1.models.create :name => "300F", :start_year => "1960", :end_year => "1960"
make1.models.create :name => "300G", :start_year => "1961", :end_year => "1961"
make1.models.create :name => "300H", :start_year => "1962", :end_year => "1962"
make1.models.create :name => "300J", :start_year => "1963", :end_year => "1963"
make1.models.create :name => "300K", :start_year => "1964", :end_year => "1964"
make1.models.create :name => "300L", :start_year => "1965", :end_year => "1965"

# Dodge Models
make2.models.create :name => "Deluxe", :start_year => "1946", :end_year => "1949"
make2.models.create :name => "Coronet", :start_year => "1949", :end_year => "1976"
make2.models.create :name => "Meadowbrook", :start_year => "1949", :end_year => "1954"
make2.models.create :name => "Wayfarer", :start_year => "1949", :end_year => "1952"

# Plymouth Models
make3.models.create :name => "Belvedere", :start_year => "1952", :end_year => "1970"
make3.models.create :name => "Plaza", :start_year => "1954", :end_year => "1958"
make3.models.create :name => "Fury", :start_year => "1956", :end_year => "1978"
make3.models.create :name => "Sport Fury", :start_year => "1959", :end_year => "1969"

# Desoto Models
make4.models.create :name => "Firedome", :start_year => "1952", :end_year => "1959"
make4.models.create :name => "Powermaster", :start_year => "1952", :end_year => "1954"
make4.models.create :name => "Fireflite", :start_year => "1955", :end_year => "1960"
make4.models.create :name => "Deluxe", :start_year => "1939", :end_year => "1952"

# Imperial Models
make5.models.create :name => "Southampton", :start_year => "1952", :end_year => "1959"
make5.models.create :name => "Newport", :start_year => "1952", :end_year => "1954"
make5.models.create :name => "Crown", :start_year => "1946", :end_year => "1948"
make5.models.create :name => "LeBaron", :start_year => "1957", :end_year => "1975"

# application1 = Spree::Application.create
# application1.make = make1
# application1.model = model1

# product_application = Spree::ProductApplication.create :application => application1, :start_year => 1956, :end_year => 1956 

#-------------------------------------------------------------------------------------
# Spree Set Up
#-------------------------------------------------------------------------------------

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

# OPTION TYPES
condition = Spree::OptionType.create :name => "Condition",
									 :presentation => "Condition"

# OPTION VALUES
value_nos = Spree::OptionValue.create :name => "NOS",
									 :presentation => "NOS",
									 :option_type => condition

value_nors = Spree::OptionValue.create :name => "NORS",
									 :presentation => "NORS",
									 :option_type => condition									 

value_new = Spree::OptionValue.create :name => "new",
									 :presentation => "new",
									 :option_type => condition

value_used = Spree::OptionValue.create :name => "used",
									 :presentation => "used",
									 :option_type => condition

value_rebuilt = Spree::OptionValue.create :name => "rebuilt",
									 :presentation => "rebuilt",
									 :option_type => condition

value_repro = Spree::OptionValue.create :name => "repro",
									 :presentation => "repro",
									 :option_type => condition

value_remolded = Spree::OptionValue.create :name => "remolded",
									 :presentation => "remolded",
									 :option_type => condition

# Create Test Part
water_pump = Spree::Product.create :name => "1957-58 392 Hemi, 354 Poly Water Pump", 
								   :description => "Water pump for all 1957 Chrysler New Yorker - Saratoga - Town/Country - Windsor - 300C - 300D and all 1957-58 Imperial.",
								   :available_on => DateTime.new(2015,1,1),
								   :slug => "1957-58-392-hemi-354-poly-water-pump",
								   :tax_category_id => auto_tax_category.id, 
								   :shipping_category_id => default.id,
								   :promotionable => true,
								   :price => 120.00 # Defines master price

tie_rod = Spree::Product.create :name => "Outer Tie Rod End - Long Wheel Base", 
								 :description => "Fits right and left",
								 :available_on => DateTime.new(2015, 1, 1),
								 :slug => "outer-tie-rod-end-lwb",
								 :tax_category_id => auto_tax_category.id, 
								 :shipping_category_id => default.id,
								 :promotionable => true,
								 :price => 125.00 # Defines master price

# Update created Product Variants
tie_rod_variant = Spree::Variant.where("product_id=?", tie_rod.id).first
tie_rod_variant.update_column("sku", 1692688)
								 
water_pump_variant = Spree::Variant.where("product_id=?", water_pump.id).first
water_pump_variant.update_column("sku", 1692799)

# Create prices for international market
=begin
tie_price = Spree::Price.create :variant => tie_rod_variant,
							:amount => 125.00,
							:currency => "USD"
pump_price = Spree::Price.create :variant => water_pump_variant,
							:amount => 120.00,
							:currency => "USD"
=end

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

water_pump_cross_ref = Spree::ProductProperty.create :value => "1692688, 2084354",
												  :product_id => water_pump.id,
												  :property_id => cross_reference.id

# Create applications

# Chrysler 300F for product 1
app1 = Spree::ProductApplication.create :product => tie_rod,
										:application_id => 10,
										:start_year => 1960,
										:end_year => 1960

app2 = Spree::ProductApplication.create :product => tie_rod,
										:application_id => 9,
										:start_year => 1959,
										:end_year => 1959

app3 = Spree::ProductApplication.create :product => water_pump,
										:application_id => 9,
										:start_year => 1959,
										:end_year => 1959

# Desoto no model
app4 = Spree::ProductApplication.create :product => water_pump,
										:application_id => 4,
										:start_year => 1959,
										:end_year => 1959

# Create Product Option Type
tie_rod_option_type = Spree::ProductOptionType.create :product => tie_rod,
													  :option_type => condition

tie_rod_option_type = Spree::ProductOptionType.create :product => water_pump,
													  :option_type => condition

# Create option type Variants
tie_rod_nos = Spree::Variant.create :sku => 1692688,
									:weight => BigDecimal.new("0.0"),
									:is_master => false,
									:product => tie_rod,
									:cost_price => BigDecimal.new("300.00"),
									:cost_currency => "USD",
									:track_inventory => true,
									:tax_category_id => 1,
									:stock_items_count => 0

tie_price_nos = Spree::Price.where("variant_id = ?", tie_rod_nos.id)
tie_price_nos.first.update_attribute("amount", 400.00)
tie_price_nos.first.update_attribute("core", 20.00)

tie_rod_nos.option_values << value_nos

tie_rod_used = Spree::Variant.create :sku => 1692688,
									:weight => BigDecimal.new("0.0"),
									:is_master => false,
									:product => tie_rod,
									:cost_price => BigDecimal.new("256.00"),
									:cost_currency => "USD",
									:track_inventory => true,
									:tax_category_id => 1,
									:stock_items_count => 0

tie_price_used = Spree::Price.where("variant_id = ?", tie_rod_used.id)
tie_price_used.first.update_attribute("amount", 350.00)
# tie_price_used.first.update_attribute("core", 15.00)

tie_rod_used.option_values << value_used


# STOCK LOCATIONS
location1 = Spree::StockLocation.create :name => "JC Auto Shop",
                                        :default => true,
                                        :active => true,
                                        :backorderable_default => false,
                                        :propagate_all_variants => true,
                                        :address1 => "20815 52nd Ave W",
                                        :address2 => "Suite 2",
                                        :city => "Lynnwood",
                                        :state_id => 3577, 
                                        :state_name => "Washington",
                                        :country_id => 232,
                                        :zipcode => "98036",
                                        :phone => "206-123-4567",
                                        :admin_name => "shop"

location2 = Spree::StockLocation.create :name => "JC Home",
                                        :default => false,
                                        :active => false,
                                        :backorderable_default => false,
                                        :propagate_all_variants => true,
                                        :city => "Seattle",
                                        :state_id => 3577, 
                                        :state_name => "Washington",
                                        :country_id => 232,
                                        :zipcode => "98105",
                                        :phone => "206-234-5678",
                                        :admin_name => "home"