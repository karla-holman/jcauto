#---------------------------------------------------------------------------
# Create Projects for "Gallery"
#---------------------------------------------------------------------------

# Create Project
project1 = Car.create(:name => '1958 Chrysler 300-D, "Darla"', 
						  :description => "Owned by Don and Pat Miller of North Carolina.", 
						  :thumb => "thumbs/darla-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project1.car_images.create(:image_path => "projects/darla-1.jpg", :description => "<h5>Before</h5><p>When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.</p>")
image2 = project1.car_images.create(:image_path => "projects/darla-2.jpg", :description => "<h5>Before</h5><p>When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.</p>")
image3 = project1.car_images.create(:image_path => "projects/darla-3.jpg", :description => "<h5>Before</h5><p>When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.</p>")
image4 = project1.car_images.create(:image_path => "projects/darla-4.jpg", :description => "<h5>Before</h5><p>When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.</p>")
image5 = project1.car_images.create(:image_path => "projects/darla-5.jpg", :description => "<h5>Before</h5><p>When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.</p>")

image6 = project1.car_images.create(:image_path => "projects/darla-6.jpg", :description => "<h5>During</h5><p>Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.</p>")
image7 = project1.car_images.create(:image_path => "projects/darla-7.jpg", :description => "<h5>During</h5><p>Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.</p>")
image8 = project1.car_images.create(:image_path => "projects/darla-8.jpg", :description => "<h5>During</h5><p>Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.</p>")
image9 = project1.car_images.create(:image_path => "projects/darla-9.jpg", :description => "<h5>During</h5><p>Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.</p>")
image10 = project1.car_images.create(:image_path => "projects/darla-10.jpg", :description => "<h5>During</h5><p>Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.</p>")

image11 = project1.car_images.create(:image_path => "projects/darla-11.jpg", :description => "<h5>After</h5><p>They restored the complete instrument panel, including the wiring harness, all of the gauges and switches, radio, power window switches, etc. They restored the steering wheel and installed the dash and pad.</p>")
image12 = project1.car_images.create(:image_path => "projects/darla-12.jpg", :description => "<h5>After</h5><p>They restored the complete instrument panel, including the wiring harness, all of the gauges and switches, radio, power window switches, etc. They restored the steering wheel and installed the dash and pad.</p>")

image13 = project1.car_images.create(:image_path => "projects/darla-13.jpg", :description => "<h5>After</h5><p>They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.</p>")
image14 = project1.car_images.create(:image_path => "projects/darla-14.jpg", :description => "<h5>After</h5><p>They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.</p>")
image15 = project1.car_images.create(:image_path => "projects/darla-15.jpg", :description => "<h5>After</h5><p>They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.</p>")
image16 = project1.car_images.create(:image_path => "projects/darla-16.jpg", :description => "<h5>After</h5><p>They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.</p>")

image17 = project1.car_images.create(:image_path => "projects/darla-17.jpg", :description => "<h5>After</h5><p>The powerful 392 hemi engine gives Darla all the horsepower she needs.</p>")
image18 = project1.car_images.create(:image_path => "projects/darla-18.jpg", :description => "<h5>After</h5><p>The powerful 392 hemi engine gives Darla all the horsepower she needs.</p>")
image19 = project1.car_images.create(:image_path => "projects/darla-19.jpg", :description => "<h5>After</h5><p>The powerful 392 hemi engine gives Darla all the horsepower she needs.</p>")

image25 = project1.car_images.create(:image_path => "projects/darla-20.jpg", :description => "<h5>After</h5><p>Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.</p>")
image26 = project1.car_images.create(:image_path => "projects/darla-21.jpg", :description => "<h5>After</h5><p>Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.</p>")
image27 = project1.car_images.create(:image_path => "projects/darla-22.jpg", :description => "<h5>After</h5><p>Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.</p>")
image28 = project1.car_images.create(:image_path => "projects/darla-23.jpg", :description => "<h5>After</h5><p>Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.</p>")

project2 = Car.create(:name => "1958 Chrysler 300D", 
						  :description => "This Formal Black beautiful 300G convertible (VIN 8413199215) just sold for a record price 
						  				   of $206,000 (before the buyer's premium, which made the total $222,480) at the 2005 Barrett-Jackson 
						  				   Scottsdale auction. The last stop for this car prior to the auction was at JC Auto Restoration! 
						  				   <br> We have been involved in several aspects of the restoration process along the way, including 
						  				   rebuilding the original engine back in 1991 and providing numerous NOS and used parts for the 
						  				   restoration. During its most recent visit, we fixed the convertible top mechanism, repaired the 
						  				   electroluminescent system, rebuilt the power antenna, tuned the longram engine and detailed the car 
						  				   inside and out.<br>Restoring a similar car? We have an extensive collection of NOS and used parts, 
						  				   as well as restoration services ranging from rebuilding individual electroluminescent components to 
						  				   full car restoration.", 
						  :thumb => "thumbs/58-300D-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project2.car_images.create(:image_path => "projects/58-300D-1.jpg", :description => "")
image2 = project2.car_images.create(:image_path => "projects/58-300D-2.jpg", :description => "")
image3 = project2.car_images.create(:image_path => "projects/58-300D-3.jpg", :description => "")

# Create Project
project3 = Car.create(:name => "1960 Chrysler 300F", 
						  :description => "Both interior and exterior work was done on this car to restore it to its original beauty. This car sold for $41,340 at the 2000 Barrett-Jackson auction once work was complete at JC Auto Restoration.", 
						  :thumb => "thumbs/31CD-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project3.car_images.create(:image_path => "projects/60-300F-1.jpg", :description => "")
image2 = project3.car_images.create(:image_path => "projects/60-300F-2.jpg", :description => "")
image3 = project3.car_images.create(:image_path => "projects/60-300F-3.jpg", :description => "")
image4 = project3.car_images.create(:image_path => "projects/60-300F-4.jpg", :description => "")
image5 = project3.car_images.create(:image_path => "projects/60-300F-5.jpg", :description => "<p>On the block at the 2000 Barrett-Jackson auction</p>")

# 1960 Chrysler 300F convertible
project4 = Car.create(:name => "1960 Chrysler 300F Convertible", 
						  :description => "JC Auto took an older restoration of this 1960 Chrysler 300F convertible and brought the car up to current 
						  				   standards for its happy owners, Jim and Jann Schroeder. When the car arrived it needed minor body work and 
						  				   new paint. JC Auto restored the entire electroluminescent instrument panel, and the brightwork was rechromed 
						  				   and polished all around.  Our shop also freshened up the engine, transmission, suspension, and brakes to restore 
						  				   its original level of performance and driveability. Enjoy the pictures of this striking 1960 Chrysler 300F 
						  				   convertible.", 
						  :thumb => "thumbs/60-300F-convert-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-1.jpg", :description => "<h5>Before</h5><p>Large dent in the door</p>")
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-2.jpg", :description => "<h5>Before</h5><p>Paint chipping off the door</p>")
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-3.jpg", :description => "<h5>Before</h5><p>Driver's side before paint</p>")
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-4.jpg", :description => "<h5>Before</h5><p>Engine compartment before restoration</p>")

image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-5.jpg", :description => "<h5>During</h5><p>Being prepped for paint</p>")
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-6.jpg", :description => "<h5>During</h5><p>Freshly painted by the friendly crew at <a href='http://fendersandfins.com/'>Fenders and Fins!</a></p>")
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-7.jpg", :description => "<h5>During</h5><p>The newly painted engine placed in the car</p>")
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-8.jpg", :description => "<h5>During</h5><p>The instrument panel undergoing restoration</p>")

image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-9.jpg", :description => "<h5>After</h5><p>Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors</p>")
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-10.jpg", :description => "<h5>During</h5><p>Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors</p>")
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-11.jpg", :description => "<h5>During</h5><p>The interior and restored electroluminescent instrument panel</p>")
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-12.jpg", :description => "<h5>During</h5><p>The car ready for its trip home to Texas</p>")
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-13.jpg", :description => "<h5>During</h5><p>A great driver!</p>")

=begin
# 1961 Chrysler Newport Town & Country astradome dashboard assembly restoration
project5 = Car.create(:name => "1961 Chrysler Newport Town & Country astradome dashboard assembly restoration", 
						  :description => "JC Auto recently restored a complete dashboard assembly for a 1961 Chrysler Newport Town & Country.  This dash was repainted and the gauges, switches, and controls fully restored.  Look below to see pictures of the restoration process for this spectacular astradome dashboard assembly.", 
						  :thumb => "thumbs/60-300F-convert-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project5.car_images.create(:image_path => "projects/61-NTC-1.jpg", :description => "<h5>Before</h5><p>Astradome instrument cluster</p>")
image2 = project5.car_images.create(:image_path => "projects/61-NTC-2.jpg", :description => "<h5>Before</h5><p>Side of astradome cluste</p>")
image3 = project5.car_images.create(:image_path => "projects/61-NTC-3.jpg", :description => "<h5>Before</h5><p>Clock</p>")
image4 = project5.car_images.create(:image_path => "projects/61-NTC-4.jpg", :description => "<h5>Before</h5><p>Radio (front view)</p>")
image5 = project5.car_images.create(:image_path => "projects/61-NTC-5.jpg", :description => "<h5>Before</h5><p>Radio (top view)</p>")
image6 = project5.car_images.create(:image_path => "projects/61-NTC-6.jpg", :description => "<h5>Before</h5><p>Radio (close up)</a></p>")
image3 = project5.car_images.create(:image_path => "projects/61-NTC-7.jpg", :description => "<h5>Before</h5><p>The newly painted engine placed in the car</p>")
image4 = project5.car_images.create(:image_path => "projects/61-NTC-8.jpg", :description => "<h5>Before</h5><p>The instrument panel undergoing restoration</p>")
image1 = project5.car_images.create(:image_path => "projects/61-NTC-9.jpg", :description => "<h5>Before</h5><p>Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors</p>")
image2 = project5.car_images.create(:image_path => "projects/61-NTC-10.jpg", :description => "<h5>Before</h5><p>Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors</p>")
image3 = project5.car_images.create(:image_path => "projects/61-NTC-11.jpg", :description => "<h5>Before</h5><p>The interior and restored electroluminescent instrument panel</p>")
image4 = project5.car_images.create(:image_path => "projects/61-NTC-12.jpg", :description => "<h5>Before</h5><p>The car ready for its trip home to Texas</p>")
image4 = project5.car_images.create(:image_path => "projects/61-NTC-13.jpg", :description => "<h5>Before</h5><p>A great driver!</p>")
=end