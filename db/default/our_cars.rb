#---------------------------------------------------------------------------
# Create our cars for "About Us" page
#---------------------------------------------------------------------------

# Create Our Cars
=begin
car1 = Car.create(:name => "1931 Chrysler CD Deluxe Roadster", :description => "Our favorite car", :thumb => "thumbs/31CD-main.jpg", :our_car => true)
image1 = car1.car_images.create(:image_path => "cars/31CD-1.jpg", :description => "")
image2 = car1.car_images.create(:image_path => "cars/31CD-2.jpg", :description => "")
image3 = car1.car_images.create(:image_path => "cars/31CD-3.jpg", :description => "")
image4 = car1.car_images.create(:image_path => "cars/31CD-4.jpg", :description => "")
image5 = car1.car_images.create(:image_path => "cars/31CD-5.jpg", :description => "")
image6 = car1.car_images.create(:image_path => "cars/31CD-6.jpg", :description => "")
image7 = car1.car_images.create(:image_path => "cars/31CD-7.jpg", :description => "")
image8 = car1.car_images.create(:image_path => "cars/31CD-8.jpg", :description => "")
image9 = car1.car_images.create(:image_path => "cars/31CD-9.jpg", :description => "")
image9 = car1.car_images.create(:image_path => "cars/31CD-10.jpg", :description => "")

car2 = Car.create(:name => "1956 Chrysler Imperial Southampton", :description => "Our other favorite car", :thumb => "thumbs/56SH-main.jpg", :our_car => true)
image1 = car2.car_images.create(:image_path => "cars/56SH-1.jpg", :description => "")
image2 = car2.car_images.create(:image_path => "cars/56SH-2.jpg", :description => "<p>Jeff installing the restored door panel</p>")
image3 = car2.car_images.create(:image_path => "cars/56SH-3.jpg", :description => "<p>Drive-Through Tree, Oregon</p>")
image4 = car2.car_images.create(:image_path => "cars/56SH-4.jpg", :description => "")
image5 = car2.car_images.create(:image_path => "cars/56SH-5.jpg", :description => "<p>Bryce Canyon, Utah</p>")
image6 = car2.car_images.create(:image_path => "cars/56SH-6.jpg", :description => "<p>A bearded Gary Goers putting the finishing touches on the back seat</p>")
image7 = car2.car_images.create(:image_path => "cars/56SH-7.jpg", :description => "")
image8 = car2.car_images.create(:image_path => "cars/56SH-8.jpg", :description => "")
image9 = car2.car_images.create(:image_path => "cars/56SH-9.jpg", :description => "<p>Seats, before and after</p>")

car3 = Car.create(:name => "1965 Plymouth Valiant Station Wagon", :description => "Our blue favorite car", :thumb => "thumbs/65PV-main.jpg", :our_car => true)
image1 = car3.car_images.create(:image_path => "cars/65PV-1.jpg", :description => "")
image2 = car3.car_images.create(:image_path => "cars/65PV-2.jpg", :description => "")
image3 = car3.car_images.create(:image_path => "cars/65PV-3.jpg", :description => "")
image4 = car3.car_images.create(:image_path => "cars/65PV-4.jpg", :description => "")

car4 = Car.create(:name => "61 New Yorker Convertible", :description => "Our old favorite car", :thumb => "thumbs/61NY-main.jpg", :our_car => true)
image1 = car4.car_images.create(:image_path => "cars/61NY-1.jpg", :description => "")
image2 = car4.car_images.create(:image_path => "cars/61NY-2.jpg", :description => "")
image3 = car4.car_images.create(:image_path => "cars/61NY-3.jpg", :description => "")
image4 = car4.car_images.create(:image_path => "cars/61NY-4.jpg", :description => "")
image5 = car4.car_images.create(:image_path => "cars/61NY-5.jpg", :description => "<p>At the shop</p>")
image6 = car4.car_images.create(:image_path => "cars/61NY-6.jpg", :description => "")
image7 = car4.car_images.create(:image_path => "cars/61NY-7.jpg", :description => "<p>With our late friend Jim Harris' Ghia limousine (1994)</p>")
image8 = car4.car_images.create(:image_path => "cars/61NY-8.jpg", :description => "")
image9 = car4.car_images.create(:image_path => "cars/61NY-9.jpg", :description => "<p>JLisa in the New Yorker convertible at Mt St Helens (Fall 2003)</p>")

car5 = Car.create(:name => "1956 Chrysler 300B", :description => "Our other favorite car", :thumb => "thumbs/56300B-main.jpg", :our_car => true)
image1 = car5.car_images.create(:image_path => "cars/56300B-1.jpg", :description => "")
image2 = car5.car_images.create(:image_path => "cars/56300B-2.jpg", :description => "<p>August 2008, Walter P Chrysler Club Regional Meet, McMinnville, Oregon</p>")
image3 = car5.car_images.create(:image_path => "cars/56300B-3.jpg", :description => "<p>August 2008, Walter P Chrysler Club Regional Meet, McMinnville, Oregon</p>")
image4 = car5.car_images.create(:image_path => "cars/56300B-4.jpg", :description => "<p>July 2008, Montana</p>")
=begin
image5 = car5.car_images.create(:image_path => "cars/56300B-5.jpg", :description => "<p>July 2008, Montana</p>")
image6 = car5.car_images.create(:image_path => "cars/56300B-6.jpg", :description => "")
image7 = car5.car_images.create(:image_path => "cars/56300B-7.jpg", :description => "<p>July 2008, Montana</p>")
image8 = car5.car_images.create(:image_path => "cars/56300B-8.jpg", :description => "<p>July 2008, Montana</p>")
image9 = car5.car_images.create(:image_path => "cars/56300B-9.jpg", :description => "")
image10 = car5.car_images.create(:image_path => "cars/56300B-10.jpg", :description => "")
image11 = car5.car_images.create(:image_path => "cars/56300B-11.jpg", :description => "<p>Winter 2007</p>")
image12 = car5.car_images.create(:image_path => "cars/56300B-12.jpg", :description => "<p>March 2006 - at JC Auto Restoration</p>")
image13 = car5.car_images.create(:image_path => "cars/56300B-13.jpg", :description => "<p>July 2008, Wallace, Idaho</p>")
image14 = car5.car_images.create(:image_path => "cars/56300B-14.jpg", :description => "<p>March 2006 - at JC Auto Restoration</p>")
=end