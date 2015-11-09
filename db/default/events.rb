# Create Events
event1 = Event.create(:name => "San Antonio Mopar Show", 
					  :description => "33rd Annual San Antonio Mopar Muscle & Classic Car Show, presented by the Mopar Muscle Club of San Antonio.  Location - Ancira Chrysler Jeep Dodge  Ram, 10807 IH-10 West, San Antonio, TX 78230.  Entry fee $20 preregistration, $25 day of show.  Info: Paul 830-914-2415 or Doug 210-288-8303", 
					  :thumb => "thumbs/31CD-main.jpg", 
					  :location => "San Antonio, Texas",
					  :event_link => "www.moparmuscleclub-sa.org",
					  :event_date => Date.new(2001,2,3))
image1 = event1.event_images.create(:image_path => "31CD-1.jpg", :description => "")
image2 = event1.event_images.create(:image_path => "31CD-2.jpg", :description => "")
image3 = event1.event_images.create(:image_path => "31CD-3.jpg", :description => "")
image4 = event1.event_images.create(:image_path => "31CD-4.jpg", :description => "")
image5 = event1.event_images.create(:image_path => "31CD-5.jpg", :description => "")
image6 = event1.event_images.create(:image_path => "31CD-6.jpg", :description => "")
image7 = event1.event_images.create(:image_path => "31CD-7.jpg", :description => "")
image8 = event1.event_images.create(:image_path => "31CD-8.jpg", :description => "")
image9 = event1.event_images.create(:image_path => "31CD-9.jpg", :description => "")
image9 = event1.event_images.create(:image_path => "31CD-10.jpg", :description => "")

event2 = Event.create(:name => "W.P.C. Southeast Texas Meet", 
					  :description => "The event is from around 11:00 AM to 2:00 PM, at San Jacinto Monument, in LaPorte Texas the same area where many of the previous Fall Meets were held.  There is no judging or trophies, just an informal gathering to talk Mopars and share some food. W.P.C. Club Members bring a covered dish to share. Visitors are welcome.", 
					  :thumb => "thumbs/31CD-main.jpg", 
					  :location => "LaPorte, Texas",
					  :event_link => "http://www.ornocar.com/wpcwelcome.html",
					  :event_date => Date.new(2016,2,3))