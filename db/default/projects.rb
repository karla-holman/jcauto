#---------------------------------------------------------------------------
# Create Projects for "Gallery"
#---------------------------------------------------------------------------
# 1956 Chrysler 300B Black
project5 = Car.create(:name => "1956 Chrysler 300B Black", 
						  :description => "This 300B came to us in need of interior and exterior restoration. With some new paint, chrome, gauge, and engine work we had her looking like new.", 
						  :thumb => "thumbs/56-300B-black-main.jpg",
						  :our_car => false,
						  :current => true)
image1 = project5.car_images.create(:image_path => "projects/56-300B-black-1.jpg", :description => "Restored dash", :state => 3)
image2 = project5.car_images.create(:image_path => "projects/56-300B-black-2.jpg", :description => "Restored dash", :state => 3)
image3 = project5.car_images.create(:image_path => "projects/56-300B-black-3.jpg", :description => "Restored Highway Hi-Fi System", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-4.jpg", :description => "Restored switches and radio", :state => 3)
image5 = project5.car_images.create(:image_path => "projects/56-300B-black-5.jpg", :description => "Resotred interior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-19.jpg", :description => "Restored interior", :state => 3)
image6 = project5.car_images.create(:image_path => "projects/56-300B-black-6.jpg", :description => "Restored engine", :state => 3)
image3 = project5.car_images.create(:image_path => "projects/56-300B-black-7.jpg", :description => "Restored engine", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-8.jpg", :description => "Restored engine", :state => 3)
image1 = project5.car_images.create(:image_path => "projects/56-300B-black-9.jpg", :description => "Restored A/C", :state => 3)
image2 = project5.car_images.create(:image_path => "projects/56-300B-black-10.jpg", :description => "Restored engine", :state => 3)
image3 = project5.car_images.create(:image_path => "projects/56-300B-black-11.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-12.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-13.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-14.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-15.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-16.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-17.jpg", :description => "Restored exterior", :state => 3)
image4 = project5.car_images.create(:image_path => "projects/56-300B-black-18.jpg", :description => "Restored exterior", :state => 3)

# Create Project
project1 = Car.create(:name => '1958 Chrysler 300-D, "Darla"', 
						  :description => "Owned by Don and Pat Miller of North Carolina.", 
						  :thumb => "thumbs/darla-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project1.car_images.create(:image_path => "projects/darla-1.jpg", :description => "When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.", :state => 1)
image2 = project1.car_images.create(:image_path => "projects/darla-2.jpg", :description => "When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.", :state => 1)
image3 = project1.car_images.create(:image_path => "projects/darla-3.jpg", :description => "When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.", :state => 1)
image4 = project1.car_images.create(:image_path => "projects/darla-4.jpg", :description => "When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.", :state => 1)
image5 = project1.car_images.create(:image_path => "projects/darla-5.jpg", :description => "When Darla first arrived at JC Auto Restoration, she was a painted, rolling, empty shell that needed everything, including major disassembly to properly align the body panels.", :state => 1)

image6 = project1.car_images.create(:image_path => "projects/darla-6.jpg", :description => "Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.", :state => 2)
image7 = project1.car_images.create(:image_path => "projects/darla-7.jpg", :description => "Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.", :state => 2)
image8 = project1.car_images.create(:image_path => "projects/darla-8.jpg", :description => "Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.", :state => 2)
image9 = project1.car_images.create(:image_path => "projects/darla-9.jpg", :description => "Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.", :state => 2)
image10 = project1.car_images.create(:image_path => "projects/darla-10.jpg", :description => "Jeff Carter and Michael Jenkins at JC Auto Restoration rebuilt her engine and transmission.", :state => 2)

image11 = project1.car_images.create(:image_path => "projects/darla-11.jpg", :description => "They restored the complete instrument panel, including the wiring harness, all of the gauges and switches, radio, power window switches, etc. They restored the steering wheel and installed the dash and pad.", :state => 3)
image12 = project1.car_images.create(:image_path => "projects/darla-12.jpg", :description => "They restored the complete instrument panel, including the wiring harness, all of the gauges and switches, radio, power window switches, etc. They restored the steering wheel and installed the dash and pad.", :state => 3)

image13 = project1.car_images.create(:image_path => "projects/darla-13.jpg", :description => "They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.", :state => 3)
image14 = project1.car_images.create(:image_path => "projects/darla-14.jpg", :description => "They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.", :state => 3)
image15 = project1.car_images.create(:image_path => "projects/darla-15.jpg", :description => "They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.", :state => 3)
image16 = project1.car_images.create(:image_path => "projects/darla-16.jpg", :description => "They restored the complete interior, including installing a new headliner, seats, door panels, trunk kit, and carpets by Gary Goers and reproduction door sills.", :state => 3)

image17 = project1.car_images.create(:image_path => "projects/darla-17.jpg", :description => "The powerful 392 hemi engine gives Darla all the horsepower she needs.", :state => 3)
=begin
image18 = project1.car_images.create(:image_path => "projects/darla-18.jpg", :description => "The powerful 392 hemi engine gives Darla all the horsepower she needs.", :state => 3)
image19 = project1.car_images.create(:image_path => "projects/darla-19.jpg", :description => "The powerful 392 hemi engine gives Darla all the horsepower she needs.", :state => 3)

image25 = project1.car_images.create(:image_path => "projects/darla-20.jpg", :description => "Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.", :state => 3)
image26 = project1.car_images.create(:image_path => "projects/darla-21.jpg", :description => "Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.", :state => 3)
image27 = project1.car_images.create(:image_path => "projects/darla-22.jpg", :description => "Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.", :state => 3)
image28 = project1.car_images.create(:image_path => "projects/darla-23.jpg", :description => "Her exterior gleams and she looks powerful and graceful whether standing still or flying down the highway.", :state => 3)
=end

project2 = Car.create(:name => "1958 Chrysler 300D", 
						  :description => "", 
						  :thumb => "thumbs/58-300D-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project2.car_images.create(:image_path => "projects/58-300D-1.jpg", :description => "")
image2 = project2.car_images.create(:image_path => "projects/58-300D-2.jpg", :description => "")
image3 = project2.car_images.create(:image_path => "projects/58-300D-3.jpg", :description => "")
image3 = project2.car_images.create(:image_path => "projects/58-300D-4.jpg", :description => "")

# Create Project
project3 = Car.create(:name => "1960 Chrysler 300F", 
						  :description => "Both interior and exterior work was done on this car to restore it to its original beauty. This car sold for $41,340 at the 2000 Barrett-Jackson auction once work was complete at JC Auto Restoration.", 
						  :thumb => "thumbs/60-300F-main.jpg",
						  :our_car => false,
						  :current => false)
image1 = project3.car_images.create(:image_path => "projects/60-300F-1.jpg", :description => "")
image2 = project3.car_images.create(:image_path => "projects/60-300F-2.jpg", :description => "")
image3 = project3.car_images.create(:image_path => "projects/60-300F-3.jpg", :description => "")
image4 = project3.car_images.create(:image_path => "projects/60-300F-4.jpg", :description => "")
image5 = project3.car_images.create(:image_path => "projects/60-300F-5.jpg", :description => "")
image6 = project3.car_images.create(:image_path => "projects/60-300F-6.jpg", :description => "On the block at the 2000 Barrett-Jackson auction")

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
image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-1.jpg", :description => "Large dent in the door", :state => 1)
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-2.jpg", :description => "Paint chipping off the door", :state => 1)
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-3.jpg", :description => "Driver's side before paint", :state => 1)
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-4.jpg", :description => "Engine compartment before restoration", :state => 1)

image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-5.jpg", :description => "The dash during restoration", :state => 2)
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-6.jpg", :description => "Freshly painted by the friendly crew at <a target='_blank' href='http://fendersandfins.com/'>Fenders and Fins!</a>", :state => 2)
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-7.jpg", :description => "The newly painted engine placed in the car", :state => 2)
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-8.jpg", :description => "The instrument panel undergoing restoration", :state => 2)

image1 = project4.car_images.create(:image_path => "projects/60-300F-convert-9.jpg", :description => "Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors", :state => 3)
image2 = project4.car_images.create(:image_path => "projects/60-300F-convert-10.jpg", :description => "Restored engine compartment with long ram intake manifolds and dual 4-bbl carburetors", :state => 3)
image3 = project4.car_images.create(:image_path => "projects/60-300F-convert-11.jpg", :description => "The interior and restored electroluminescent instrument panel", :state => 3)
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-12.jpg", :description => "The car ready for its trip home to Texas", :state => 3)
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-13.jpg", :description => "The restored interior ready to drive", :state => 3)
image4 = project4.car_images.create(:image_path => "projects/60-300F-convert-14.jpg", :description => "")

