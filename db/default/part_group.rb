# Create Part Group Taxonomies
t_part_group = Spree::Taxonomy.create :name => "Part Groups"
t_part_group_taxon = Spree::Taxonomy.where(name: t_part_group.name).first
t_part_group_tax = t_part_group_taxon.taxons

t1 = Spree::Taxon.create :name => "Accessories", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/accessories.png"

t2 = Spree::Taxon.create :name => "Front Suspension", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t3 = Spree::Taxon.create :name => "Rear Axle", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t4 = Spree::Taxon.create :name => "Parking Brake", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t5 = Spree::Taxon.create :name => "Service Brakes", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/service_brakes.png"

t6 = Spree::Taxon.create :name => "Clutch", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t7 = Spree::Taxon.create :name => "Cooling", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/cooling.png"

t8 = Spree::Taxon.create :name => "Electrical", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/electrical.png"

t9 = Spree::Taxon.create :name => "Engine", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t10 = Spree::Taxon.create :name => "Engine Oiling", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t11 = Spree::Taxon.create :name => "Exhaust", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/exhaust.png"

t12 = Spree::Taxon.create :name => "Fenders and Sheet Metal", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t13 = Spree::Taxon.create :name => "Frame", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t14 = Spree::Taxon.create :name => "Fuel", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/fuel.png"

t15 = Spree::Taxon.create :name => "Hood", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t16 = Spree::Taxon.create :name => "Drive Shaft and Universal Joint", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t17 = Spree::Taxon.create :name => "Springs", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id, :image_path => "taxons/springs.png"

t18 = Spree::Taxon.create :name => "Standard Parts", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t19 = Spree::Taxon.create :name => "Steering", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t21 = Spree::Taxon.create :name => "Transmission", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t22 = Spree::Taxon.create :name => "Wheels", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t23 = Spree::Taxon.create :name => "Body", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t24 = Spree::Taxon.create :name => "Air Conditioning", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t25 = Spree::Taxon.create :name => "Emission Controls", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t30 = Spree::Taxon.create :name => "Literature", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

t31 = Spree::Taxon.create :name => "Memorabilia", :parent_id => t_part_group_tax.first.id, :taxonomy_id => t_part_group_tax.first.taxonomy_id

# Create Part Sub-Group Taxons

# Accessories
Spree::Taxon.create :name => "Bumper or grille guard", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Deck lid tire cover package", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Automatic headlamp dimmer", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Warning light", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Load leveller", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Hand brake signal lamp", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Backup lamp", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Cigar lighter", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Underhood light", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Map and courtesy light", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Head rest", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Tire pump inflator", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Clock", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Ornament or medallion", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Automatic pilot", :parent_id => t1.id
Spree::Taxon.create :name => "Trunk compartment light", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Exhaust system", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Visor", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Fuel tank locking cap", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Power brake", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Fender skirt", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Hot water or gas heater and component parts", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Record player package, hi-fi", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Electric window lift safety switch package", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Trailer hitch coupler ball", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Roof luggage rack", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Mirror", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Windshield washer", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Radio", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Radio antenna", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Spotlight", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Tire cover", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id
Spree::Taxon.create :name => "Door edge protector", :parent_id => t1.id, :taxonomy_id => t1.taxonomy_id

# Front Suspension
Spree::Taxon.create :name => "Front axle I-beam", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Drag link", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Steering knuckle", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "King pin", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Steering linkage knuckle arm", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Steering knuckle tie rod", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front wheel upper control arm", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front wheel upper control arm pivot bar", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front wheel lower control arm", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front axle housing", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front axle universal drive", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front axle steering knuckle flange", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front suspension torsion parts", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Front suspension repair packages", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id
Spree::Taxon.create :name => "Miscellaneous", :parent_id => t2.id, :taxonomy_id => t2.taxonomy_id

# Rear Axle
Spree::Taxon.create :name => "Rear axle control strut", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Rear axle housing", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Rear axle differential and carrier", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential case", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential side gear", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential pinion", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential pinion shaft", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Rear axle differential clutch parts", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential spider", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Differential bearings", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive gear and pinion set", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive gear bolt", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive pinion bearings", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive shaft", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive shaft bearings", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive shaft oil seal", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id
Spree::Taxon.create :name => "Drive shaft flange", :parent_id => t3.id, :taxonomy_id => t3.taxonomy_id

# Parking brake
Spree::Taxon.create :name => "Parking brake drum", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake band", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake shoe anchor", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake adjuster", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake hand lever mounting bracket", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever support bolt", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever sector", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever pawl", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever release spoon", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Hand brake lever return spring", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake lever pull rod", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake control cable", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake - foot operated", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake operating lever", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id
Spree::Taxon.create :name => "Parking brake support", :parent_id => t4.id, :taxonomy_id => t4.taxonomy_id

# Service Brakes
Spree::Taxon.create :name => "Brake fluid", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake shoe and lining", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder piston push rod", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake support", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake dust shield", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake shoe anchor bolt", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake automatic adjuster", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake shoe adjusting pin ", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake adjusting cam dust shield seal", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake shoe guide", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake shoe guide", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake pedal", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal pad", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal shaft", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal stop", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal bracket", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal return spring", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake pedal return spring bracket", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder boot", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder reinforcement", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder valve", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder piston", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder piston cup", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder piston return spring", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder piston push rod", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Master cylinder brake tube", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake frame tube", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Rear axle brake tube", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder connecting tube", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake tube or hose clip", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake tube bracket", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake tube tee", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Brake flexible hose", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder package", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel brake cylinder assembly", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder body", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder inlet connection", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder bleeder screw", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder boot", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder piston  ", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder piston cup", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Wheel cylinder piston cup expander", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake power unit", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Booster brake cylinder mounting bracket", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake vacuum tank", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Booster cylinder vacuum valve", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake vacuum check valve", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Booster brake tube ", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Booster vacuum brake tube elbow", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "booster brake tube clip", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake tube connector", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake vacuum hose", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake hose clamp", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id
Spree::Taxon.create :name => "Power brake air cleaner", :parent_id => t5.id, :taxonomy_id => t5.taxonomy_id

# Clutch
Spree::Taxon.create :name => "Clutch package", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch housing", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch housing pan", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch housing ventilator hole screen", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch housing ventilator  ", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch disc", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch cover and pressure plate", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pressure plate", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pressure spring", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release lever", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pressure plate eye bolt and nut", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release bearing", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release bearing pull-back spring", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release fork", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release fork seal", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release fork rod", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release fork pull-back spring", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch release overcenter spring", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal pad", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal shaft", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal bracket", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal lever", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal rod", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch pedal rod spring", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch torque shaft", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id
Spree::Taxon.create :name => "Clutch torque shaft brackets", :parent_id => t6.id, :taxonomy_id => t6.taxonomy_id

# Cooling
Spree::Taxon.create :name => "Fan assembly", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Fan and related drive belts", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Fan belt idler pulley", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Fan pulley hub", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Fan drive and driven pulleys", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Fan fluid drive unit", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator fan shroud", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator shim", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator core", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator filler cap", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator drain cock", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator hose", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator grille", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator medallion", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator yoke", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator support", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator shield", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator upper cross bar", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator lower cross bar", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator stone deflector", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radiator tie rod", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Thermostat", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump body or housing", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump gasket", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump shaft and impeller", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump seal", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Water pump by-pass nipple", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id
Spree::Taxon.create :name => "Radaitor coolant reserve tank", :parent_id => t7.id, :taxonomy_id => t7.taxonomy_id

# Electrical
Spree::Taxon.create :name => "Batteries and cables", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Arm rest lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Dome lamp and switch", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Quarter panel ornament lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Quarter or courtesy lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Automatic lamp door switch", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Trunk lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Side marker lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Chassis and body wiring", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Cable and connections", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Fuses and circuit breakers", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Instrument panel wiring", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Cigar lighter", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Terminal block", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "NOX emission control", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Ignition distributor", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Generator or alternator", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Generator component parts", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Grommets", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Hand brake signal lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Horns", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Horn control", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Headlamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Ignition coil, switch and lock cylinder", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Ignition", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Instrument panel instruments", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Glove compartment light", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Headlamp beam indicator light", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Ignition lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Instrument panel light", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Map lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Bulbs", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "License mounting parts", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Clearance or identificatino lamp or side marker reflectors", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Parking and directional lamps", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Starting motor", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Switches", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Tail, stop and directional signal lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Back-up lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "License plate lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id
Spree::Taxon.create :name => "Stop lamp", :parent_id => t8.id, :taxonomy_id => t8.taxonomy_id

# Engine
Spree::Taxon.create :name => "Engine assembly", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Cylinder block", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Cylinder head", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Cylinder head water outlet elbow", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Cylinder block water jacket drain cock", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft sprocket", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft bearing packages", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft bearing cap", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft rear bearing oil seal", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Crankshaft vibartion damper", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Camshaft", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Camshaft bearing", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Camshaft sprocket", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Camshaft bearing oil tube", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Camshaft sprocket oil tube", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Timing chain", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Chain case cover", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Chain case cover plate", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Connecting rod", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Connecting rod bearing packages", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Piston, w/pin", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Piston ring sets", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Piston pin", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Piston expander", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Valve", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Valve spring cover", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Valve tappet", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Valve push rod", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Valve rocker", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Flywheel", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Torque converter", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Manifold", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Manifold gaskets", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Manifold heat control valve thermostat", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Manifold heat control valve  ", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Manifold heat control valve stop", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Engine front support", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Engine front support plate", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Engine front support insulator", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Frame engine rear support crossmember", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Frame engine rear support crossmember bracket", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id
Spree::Taxon.create :name => "Engine rear support insulator", :parent_id => t9.id, :taxonomy_id => t9.taxonomy_id

# Engine Oiling
Spree::Taxon.create :name => "Crankcase breather pipe inlet", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Crankcase ventilator outlet", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil level indicator", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil gauge tube or hose", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump cover", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump drive shaft", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump drive gear", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump rotor", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump outlet pipe", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pump suction pipe", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pressure relief valve", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil strainer", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil pan", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil filter", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Oil filter tubes", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id
Spree::Taxon.create :name => "Engine oil cooler", :parent_id => t10.id, :taxonomy_id => t10.taxonomy_id

#Exhaust
Spree::Taxon.create :name => "Muffler", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Muffler support", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Exhaust pipe", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Exhaust pipe flange gasket and stud", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Exhaust pipe support and clamp", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Tail pipe", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id
Spree::Taxon.create :name => "Tail pipe support", :parent_id => t11.id, :taxonomy_id => t11.taxonomy_id

# Fenders and Sheet Metal
Spree::Taxon.create :name => "Front fenders", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender liner", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender shield or plate", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender bracket", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender side shield brace", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender moulding and name plate packages", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Front fender grille bar extension", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fenders", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fender mouldings", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fender welt and anti-squeak", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fender stone shield", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fender extension", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Rear fender fuel tank filler opening cover", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Running board and side step", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Fender air duct", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id
Spree::Taxon.create :name => "Crossmember shield", :parent_id => t12.id, :taxonomy_id => t12.taxonomy_id

# Frame
Spree::Taxon.create :name => "Frame assembly", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame sidemember front bumper reinforcement", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Propeller shaft center bearing crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame front spring and engine rear support crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame front crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Fuel tank support crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Intermediate crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame rear crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame rear shock absorber crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame rear spring bracket crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame transfer case crossmember", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame clinch nut", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Battery carrier", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Battery hold-down strap", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Battery heat shield", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Battery hold-down stud", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame body bracket", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame extension", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame gusset", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Running board hangers", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Front spring hanger or bracket", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Frame rear spring hanger", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Tow hook", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Pintle hook", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Front bumper face bar", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Rear bumper face bar", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Bumper guards", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id
Spree::Taxon.create :name => "Bumper jack and handle", :parent_id => t13.id, :taxonomy_id => t13.taxonomy_id

# Fuel
Spree::Taxon.create :name => "Accelerator pedal", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Automatic pilot", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Accelerator pedal return spring", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Accelerator pedal to accelerator shaft rod", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Accelerator shaft", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle linkage service package", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle linkage ball joint or ball stud", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control bell crank", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control lever", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control shaft with levers", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control cross shaft", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle hand control", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control cable", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Throttle control or wire tube dash bracket", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor air cleaner", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor  ", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor stud", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor body flange", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor gaskets", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor jets", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor springs", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor plugs and balls", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor throttle", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor choke attaching parts", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor float", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor pump", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor step-up piston", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor tubes", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor idling parts", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor vacuum economizer piston", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor air horn", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "High speed bleeder", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor main body", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor anti-stall diaphragm (dash pot)", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor switch", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor valve cage plunger", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor anti-stall magnetic lockout", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Carburetor screws and washers", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Air temperature control", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Choke control", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Automatic choke  ", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Automatic choke to carburetor rod clip", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel filter", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Governor", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel tank gauge", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump mounting", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump body", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump cover or housing", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump push rod", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump valve", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump rocker arm or cam lever", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump strainer", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Vacuum pump", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump tube clip", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel pump to carburetor tube", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel tank", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel tank dust shield or stone deflector", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel tank support", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel line tube", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id
Spree::Taxon.create :name => "Fuel line tube clip", :parent_id => t14.id, :taxonomy_id => t14.taxonomy_id

# Hood
Spree::Taxon.create :name => "Hood hold down spring", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood top panel", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood name plate, medallions and letters", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood bumper", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood lock", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood lock striker", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood lock control", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood lock catch", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood hinge", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood support bracket", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood moulding", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id
Spree::Taxon.create :name => "Hood top strainer", :parent_id => t15.id, :taxonomy_id => t15.taxonomy_id

# Drive Shaft and Universal Joint
Spree::Taxon.create :name => "Propeller shaft", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint body", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint spring", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint centering button", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint dust cover", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint cross", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint cross roller and bearing block", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Universal joint cross roller and bushing", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Propeller shaft spline or sliding yoke", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Propeller shaft center bearing", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Propeller shaft center bearing housing", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id
Spree::Taxon.create :name => "Propeller shaft flange or yoke", :parent_id => t16.id, :taxonomy_id => t16.taxonomy_id

# Springs
Spree::Taxon.create :name => "Front springs", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring leaf", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring bolt", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring clip", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring shackle", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring bumper", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Front spring torque arrestor", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear springs", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring leaf", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring center bolt", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring clip", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring shackle", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring silent bloc", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring bumper", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear spring cover and wrapper", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Shock absorber", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Shock absorber bracket", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Shock absorber component parts", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Sway eliminator shaft", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id
Spree::Taxon.create :name => "Rear air shock absorber (auto height control)", :parent_id => t17.id, :taxonomy_id => t17.taxonomy_id

# Standard Parts
# No Taxons

# Steering
Spree::Taxon.create :name => "Steering gear assembly", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear housing", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear housing cover", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear housing bracket", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear bracket", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear grease retaining tube", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear column jacket", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear tube and worm", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear shaft and roller tooth assembly", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear arm and idler arm", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear intermediate arm", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering wheel", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering column bracket", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering post steady bracket brace", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Gearshift rod or tube", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear remote control gearshift selector rod", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Gearshift control rods", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear remote control gearshift control cable", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear remote control gearshift control lever and shaft", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Steering gear remote control gearshift control bell crank", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Power steering oil pump", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Power steering gear piston", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Power steering gear valves", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Power steering gear hose", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id
Spree::Taxon.create :name => "Power steering unit", :parent_id => t19.id, :taxonomy_id => t19.taxonomy_id

# Transmission
Spree::Taxon.create :name => "Transmission sets or packages", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission assembly", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission case", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission case extension", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission output shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main drive pinion", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission gears", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission reverse idler gear", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission reverse idler gear shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission clutch gear", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission countershaft gear", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main shaft pilot bearing", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main shaft bearing", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main shaft bearing oil seal", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main shaft rear bearing retainer", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission countershaft  ", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission countershaft bearing", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission countershaft free wheeling gear", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission case cover or housing", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission gearshift lever, buttons and cable", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission gearshift rail", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission gearshift fork", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission remote control gearshift", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission countershaft free wheeling cam roller", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission kickdown governor", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission kickdown solenoid", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission wiring", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission main control valve", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission speedometer cable includes shaft and housing", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission speedometer gear and pinion", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Winch parts", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case control lever", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case drive gear", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case driven gear shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case idler gear and shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case shift rail", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case shift fork", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transfer case sliding gear or clutch", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission neutral starter switch", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission oil pump strainer", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission oil pump  ", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission oil pan", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission direct speed piston", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission shuttle valve", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission input shaft, torque converter reaction shaft and intermediate shaft", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission regulator valve body and valves", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission direct clutch", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission kickdown planet pinion carrier and component parts, front and rear planet pinion carrier and components", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission reverse planet pinion carrier and component parts", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission bands", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission servos", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission governor", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission valve body and valves", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id
Spree::Taxon.create :name => "Transmission control levers", :parent_id => t21.id, :taxonomy_id => t21.taxonomy_id

# Wheels
Spree::Taxon.create :name => "Wheels", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Hub and brake drum", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Wheel brake drum", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Wheel hub", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Front wheel bearings", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Rear wheel bearings", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Wheel hub caps", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Wheel balance weight", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Wheel rim", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Underslung tire carrier", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Spare wheel carrier", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id
Spree::Taxon.create :name => "Spare wheel or wheel cover lock", :parent_id => t22.id, :taxonomy_id => t22.taxonomy_id

# Body
Spree::Taxon.create :name => "Cab", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Ash receivers", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Floor boards", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Body hold-down bolt", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Glove box", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Brackets and reinforcements", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Bumpers and strikers", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Glass channels", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door check", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Doors", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Front section", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Safe-T-Matic door locks", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door regulators and remote control handles", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door hinge", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Lock cylinder and keys", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door locks and remote controls", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Deck lid", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Floor mats", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Mirrors", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Garnish mouldings", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Outside finish mouldings", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Trim finish mouldings", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Clinch nuts", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Pads, liners, insulators, seals, anti-squeak", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Pans, plugs and body bumpers", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Instrument panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Body panels", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Pillar", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Floor tunnel console", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Window lift (manual)", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Roof rail and luggage rack", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Window lift (electric)", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Window glass run", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Auxiliary seat", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Front seat", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Front seat back hinge", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Front seat adjuster or guide", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Second and third seat", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Seat belt", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Side sill and belt bar", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Seat spring", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Tailgate  ", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Tire compartment or wheel compartment", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Folding top", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Drain trough and moulding", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Cowl vent or air intake", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Weatherstrip", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Windows and vent wing", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Windshield  ", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Windshield wiper", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Racks and gates", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Center seat  ", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Center seat trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Floor tunnel console", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Side compartment", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Jack stand trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Arm rest", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Assist strap and handle", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Carpets", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Grab handle, robe rail, coat hanger hook", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door glass storage compartment trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Trim pads", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Headlining and listing", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Back trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Belt rail trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "cowl trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Door trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Header trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Heelboard trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Luggage and rear compartment trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Package tray or compartment trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Body center pillar trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Quarter trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Shelf trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Visor trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Wheelhouse trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Foot rest", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Partition trim panel", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Auxiliary seat trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Front seat trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Rear seat trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Top trim", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id
Spree::Taxon.create :name => "Weathercords, welts, fillers", :parent_id => t23.id, :taxonomy_id => t23.taxonomy_id

# Air Conditioning
Spree::Taxon.create :name => "Air conditioning packages", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Control", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Compressor", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Receiver drier", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Condenser", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Evaporator unit", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id
Spree::Taxon.create :name => "Actuator", :parent_id => t24.id, :taxonomy_id => t24.taxonomy_id

# Emission Controls
Spree::Taxon.create :name => "Air pump", :parent_id => t25.id, :taxonomy_id => t25.taxonomy_id
Spree::Taxon.create :name => "Fuel vapor canister", :parent_id => t25.id, :taxonomy_id => t25.taxonomy_id
Spree::Taxon.create :name => "Exhaust gas valve, recirculating", :parent_id => t25.id, :taxonomy_id => t25.taxonomy_id
Spree::Taxon.create :name => "Vacuum delay Nox Valve, California", :parent_id => t25.id, :taxonomy_id => t25.taxonomy_id

# Literature
# No Taxons

# Memorabilia
# No Taxons