#---------------------------------------------------------------------------
# Create events (car shows, etc)
#---------------------------------------------------------------------------

# Create Events
event1 = Event.create(:name => "SunBust All Mopar Show",
					  :description => "23rd Annual SunBust All Mopar Show and Swap Meet. One of the biggest 1 day shows on the West Coast! Everything from 1912 to 2008 models Dodge, Plymouth, Chrysler cars and trucks including AMC. Website: <a target='_blank' href='http://moparsunlimited.org/sunbust/'>http://moparsunlimited.org/sunbust/</a>",
					  :thumb => "graham-thumb.jpg",
					  :location => "Frontier Park, Graham Wa",
					  :event_link => "http://moparsunlimited.org/sunbust/",
					  :event_date => Date.new(2008,8,24)) # Year Month Day
image1 = event1.event_images.create(:image_path => "graham-1.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-2.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-3.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-4.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-5.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-6.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-7.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-8.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-9.jpg", :description => "At the car show")
image1 = event1.event_images.create(:image_path => "graham-10.jpg", :description => "At the car show")

event2 = Event.create(:name => "W.P.C. PNW Regional Meet",
					  :description => "A fun event located just a short ferry ride away from Seattle in the semi-rural community of Poulsbo. More information can be found at <a target='_blank' href='https://www.chryslerclub.org/Pugetsound.html'>https://www.chryslerclub.org/Pugetsound.html</a>.",
					  :thumb => "wpc-thumb.jpg",
					  :location => "Poulsbo, Washington",
					  :event_link => "https://www.chryslerclub.org/Pugetsound.html",
					  :event_date => Date.new(2014,8,5)) # Year Month Day
image1 = event2.event_images.create(:image_path => "wpc-1.jpg", :description => "New Yorker")
image1 = event2.event_images.create(:image_path => "wpc-2.jpg", :description => "New Yorker Details")
image1 = event2.event_images.create(:image_path => "wpc-3.jpg", :description => "Front View 300K")
image1 = event2.event_images.create(:image_path => "wpc-4.jpg", :description => "1950 Plymouth")
image1 = event2.event_images.create(:image_path => "wpc-5.jpg", :description => "Back View Chrysler Town & Country")
image1 = event2.event_images.create(:image_path => "wpc-6.jpg", :description => "Interiror View Chrysler Town & Country")
image1 = event2.event_images.create(:image_path => "wpc-7.jpg", :description => "Under the hood of the Chrysler Town & Country")
image1 = event2.event_images.create(:image_path => "wpc-8.jpg", :description => "Dodge Truck")
image1 = event2.event_images.create(:image_path => "wpc-9.jpg", :description => "Dodge")
image1 = event2.event_images.create(:image_path => "wpc-10.jpg", :description => "Jeff in front of the State Champion Camperdown Elm in Port Gamble, WA")

event3 = Event.create(:name => "2008 Hydroplane Races at Chelan",
					  :description => "We always love a trip to Lake Chelan, especially when our friend Tim promises to take us out in his hydroplane for a ride. Vintage Unlimited Hydroplanes from the Hydroplane And Raceboat Museum in Seattle showcased alongside the races.",
					  :thumb => "chelan-thumb.jpg",
					  :location => "Chelan, Washington",
					  :event_link => "http://www.lakechelan.com/mahogany-merlot-hydroplane-races/",
					  :event_date => Date.new(2008,10,4)) # Year Month Day
image1 = event3.event_images.create(:image_path => "chelan-1.jpg", :description => "Getting the Hurricane IV ready to go")
image1 = event3.event_images.create(:image_path => "chelan-2.jpg", :description => "Pancho and Jeff looking on at the hydroplanes")
image1 = event3.event_images.create(:image_path => "chelan-3.jpg", :description => "Oh Boy Oberto showing speed on the lake")
image1 = event3.event_images.create(:image_path => "chelan-4.jpg", :description => "Lisa having fun after a ride in the hydroplane")
image1 = event3.event_images.create(:image_path => "chelan-5.jpg", :description => "Lisa and Tim taking a ride on the lake")
image1 = event3.event_images.create(:image_path => "chelan-6.jpg", :description => "Jeff and Tim analyzing the hydroplane")
image1 = event3.event_images.create(:image_path => "chelan-7.jpg", :description => "Jeff coming back in after a ride on the hydroplane")
image1 = event3.event_images.create(:image_path => "chelan-8.jpg", :description => "Heading out with Jeff on board")
image1 = event3.event_images.create(:image_path => "chelan-9.jpg", :description => "Jeff enjoying the ride")
image1 = event3.event_images.create(:image_path => "chelan-10.jpg", :description => "Crews prepping the hydroplanes")

event4 = Event.create(:name => "Motorsports 2008 Northwest Auto Show",
					  :description => "Motor sports show at the Tacoma Dome with a display of 300 rare and classic vehicles including NASCAR and Indy cars, dragsters, hot rods, plus a variety of vintage and modern hydroplanes. We enjoyed meeting other motor sports enthusiasts from all over the world. Here is a selection of some of the beautiful cars and hydroplanes we saw.",
					  :thumb => "tacoma-thumb.jpg",
					  :location => "Tacoma, Washington",
					  :event_link => "www.motorsports2008.com",
					  :event_date => Date.new(2008,11,9)) # Year Month Day
image1 = event4.event_images.create(:image_path => "tacoma-1.jpg", :description => "Front view of 1923 Lincoln Touring Car")
image1 = event4.event_images.create(:image_path => "tacoma-2.jpg", :description => "Back view of 1941 Chevrolet Convertible")
image1 = event4.event_images.create(:image_path => "tacoma-3.jpg", :description => "At the car show")
image1 = event4.event_images.create(:image_path => "tacoma-4.jpg", :description => "Jeff admiring a 1931 Chrysler CD")
image1 = event4.event_images.create(:image_path => "tacoma-5.jpg", :description => "Side view of 1932 Chevrolet Deluxe Sport Coupe")
image1 = event4.event_images.create(:image_path => "tacoma-6.jpg", :description => "Vintage hydroplane show")
image1 = event4.event_images.create(:image_path => "tacoma-7.jpg", :description => "Vintage Hydroplane interior")
image1 = event4.event_images.create(:image_path => "tacoma-8.jpg", :description => "Vintage Hydroplane interior")
image1 = event4.event_images.create(:image_path => "tacoma-9.jpg", :description => "Jeff in front of Annie's Dodge II")
image1 = event4.event_images.create(:image_path => "tacoma-10.jpg", :description => "Jeff learning about the vintage hydroplanes")
