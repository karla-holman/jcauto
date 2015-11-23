#---------------------------------------------------------------------------
# Create body type taxonomies
#---------------------------------------------------------------------------

# Create Body Type Taxonomies
ven1 = Spree::Vendor.create :name => "310 Enterprises, Inc.",
							:phone => "920-605-6555",
							:email => "mb310@yahoo.com",
							:address1 => "N6761 CTH P",
							:city => "Waldo",
							:state_id => 3577, 
                            :state_name => "Washington",
                            :country_id => 232,
							:zipcode => "53093"

ven2 = Spree::Vendor.create :name => "ACME - All Chrysler Muscle Equipment",
							:phone => "360-652-0134",
							:email => "superbirdbob@gmail.com",
							:address1 => "3405 172nd St. NE",
							:address2 => "Suite #5, PMB #216",
							:city => "Arlington",
							:state_id => 3577, 
                            :state_name => "Washington",
                            :country_id => 232,
							:zipcode => "98223",
							:contact_name => "Bob Kropp",
							:website => "http://www.superbirdbob.com/"