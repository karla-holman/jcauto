#---------------------------------------------------------------------------
# Create body type taxonomies
#---------------------------------------------------------------------------

# Create Body Type Taxonomies
ven1 = Spree::Vendor.create :name => "310 Enterprises, Inc.",
							:phone => "920-605-6555",
							:email => "mb310@yahoo.com",
							:line_1 => "N6761 CTH P",
							:city => "Waldo",
							:state => "WI",
							:zip => "53093",
							:country => "USA"

ven2 = Spree::Vendor.create :name => "ACME - All Chrysler Muscle Equipment",
							:phone => "360-652-0134",
							:email => "superbirdbob@gmail.com",
							:line_1 => "3405 172nd St. NE",
							:line_2 => "Suite #5, PMB #216",
							:city => "Arlington",
							:state => "WA",
							:zip => "98223",
							:country => "USA",
							:contact_name => "Bob Kropp",
							:website => "http://www.superbirdbob.com/"