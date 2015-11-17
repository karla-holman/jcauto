#---------------------------------------------------------------------------
# Create events (car shows, etc)
#---------------------------------------------------------------------------

# Create Events
event1 = Event.create(:name => "San Antonio Mopar Show", 
					  :description => "33rd Annual San Antonio Mopar Muscle & Classic Car Show, presented by the Mopar Muscle Club of San Antonio.  Location - Ancira Chrysler Jeep Dodge  Ram, 10807 IH-10 West, San Antonio, TX 78230.  Entry fee $20 preregistration, $25 day of show.  Info: Paul 830-914-2415 or Doug 210-288-8303", 
					  :thumb => "thumbs/31CD-main.jpg", 
					  :location => "San Antonio, Texas",
					  :event_link => "www.moparmuscleclub-sa.org",
					  :event_date => Date.new(2001,2,3)) # Year Month Day
image1 = event1.event_images.create(:image_path => "31CD-1.jpg", :description => "At the car show")
image2 = event1.event_images.create(:image_path => "31CD-2.jpg", :description => "At the car show")
image3 = event1.event_images.create(:image_path => "31CD-3.jpg", :description => "At the car show")
image4 = event1.event_images.create(:image_path => "31CD-4.jpg", :description => "At the car show")
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
					  :event_date => Date.new(2014,9,2)) # Year Month Day
image1 = event2.event_images.create(:image_path => "56SH-1.jpg", :description => "At the car show again")
image2 = event2.event_images.create(:image_path => "56SH-2.jpg", :description => "At the car show")
image3 = event2.event_images.create(:image_path => "56SH-3.jpg", :description => "At the car show")
image4 = event2.event_images.create(:image_path => "56SH-4.jpg", :description => "At the car show")
image5 = event2.event_images.create(:image_path => "56SH-5.jpg", :description => "")
image6 = event2.event_images.create(:image_path => "56SH-6.jpg", :description => "")
image7 = event2.event_images.create(:image_path => "56SH-7.jpg", :description => "")
image8 = event2.event_images.create(:image_path => "56SH-8.jpg", :description => "")

event3 = Event.create(:name => "W.P.C. Southeast Texas Meet", 
					  :description => "6th Annual Ohio Mopar Expo Swap Meet and Car Corral for Chrysler, Plymouth, Dodge and related vehicles, Ohio Expo Center & State Fair, Rhodes Building, 717 E. 17th Ave., 43211, 9am-4pm, indoor swap and corral space available starting at $25.00 each, spectator admission only $5.00 after 10am, (614)268-1181, www.jeffjohnsonmotorsports.com. Facebook: Chrysler Power Classic.", 
					  :thumb => "thumbs/31CD-main.jpg", 
					  :location => "Columbus, Ohio",
					  :event_link => "www.jeffjohnsonmotorsports.com",
					  :event_date => Date.new(2015,9,13)) # Year Month Day
image1 = event3.event_images.create(:image_path => "56300B-1.jpg", :description => "At the car show again")
image2 = event3.event_images.create(:image_path => "56300B-2.jpg", :description => "At the car show")
image3 = event3.event_images.create(:image_path => "56300B-3.jpg", :description => "At the car show")
image4 = event3.event_images.create(:image_path => "56300B-4.jpg", :description => "At the car show")
image5 = event3.event_images.create(:image_path => "56300B-5.jpg", :description => "")
image6 = event3.event_images.create(:image_path => "56300B-6.jpg", :description => "")
image7 = event3.event_images.create(:image_path => "56300B-7.jpg", :description => "")
image8 = event3.event_images.create(:image_path => "56300B-8.jpg", :description => "")
image9 = event3.event_images.create(:image_path => "56300B-9.jpg", :description => "")
image9 = event3.event_images.create(:image_path => "56300B-10.jpg", :description => "")