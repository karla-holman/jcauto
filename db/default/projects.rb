# Create Project
project1 = Car.create(:name => "1961 Chrysler 300G convertible", 
						  :description => "This Formal Black beautiful 300G convertible (VIN 8413199215) just sold for a record price of $206,000 (before the buyer's premium, which made the total $222,480) at the 2005 Barrett-Jackson Scottsdale auction. The last stop for this car prior to the auction was at JC Auto Restoration! <br> We have been involved in several aspects of the restoration process along the way, including rebuilding the original engine back in 1991 and providing numerous NOS and used parts for the restoration. During its most recent visit, we fixed the convertible top mechanism, repaired the electroluminescent system, rebuilt the power antenna, tuned the longram engine and detailed the car inside and out.<br>Restoring a similar car? We have an extensive collection of NOS and used parts, as well as restoration services ranging from rebuilding individual electroluminescent components to full car restoration. ", 
						  :thumb => "thumbs/31CD-main.jpg",
						  :our_car => false,
						  :current => true)
image1 = project1.car_images.create(:image_path => "61300G-1.jpg", :description => "")
image2 = project1.car_images.create(:image_path => "61300G-2.jpg", :description => "")
image3 = project1.car_images.create(:image_path => "61300G-3.jpg", :description => "")
image4 = project1.car_images.create(:image_path => "61300G-4.jpg", :description => "")

# Create Project
project2 = Car.create(:name => "1960 Plymouth", 
						  :description => "JC Auto received this 1960 Plymouth, affectionately called El Bisonte by its owner Don Miller of North Carolina.  Don asked us to replace the tired 318cid engine.  We installed a 413cid engine with the famous ram induction complete with factory cast headers and 3-speed manual transmission.  Here are some pictures of the Plymouth during its drivetrain conversion.", 
						  :thumb => "thumbs/31CD-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project1.car_images.create(:image_path => "61300G-1.jpg", :description => "")
image2 = project1.car_images.create(:image_path => "61300G-2.jpg", :description => "")
image3 = project1.car_images.create(:image_path => "61300G-3.jpg", :description => "")
image4 = project1.car_images.create(:image_path => "61300G-4.jpg", :description => "")