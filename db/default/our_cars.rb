# Create Our Cars
car1 = OurCar.create(:name => "1961 Chrysler New Yorker Convertible", :description => "Our favorite car", :thumb => "thumbs/61NY.jpg")
image1 = car1.our_car_images.create(:image_path => "cars/61NY_1.jpg", :description => "Walter P Chrysler meet in Port Townsend, WA. Check out the ladies! (August 2000)")
image2 = car1.our_car_images.create(:image_path => "cars/61NY_2.jpg", :description => "1961 Chrysler New Yorker Convertible")
image3 = car1.our_car_images.create(:image_path => "cars/61NY_3.jpg", :description => "Lisa in the New Yorker convertible at Mt St Helens (Fall 2003)")
image4 = car1.our_car_images.create(:image_path => "cars/61NY_4.jpg", :description => "With our late friend Jim Harris' Ghia limousine (1994)")
image5 = car1.our_car_images.create(:image_path => "cars/61NY_5.jpg", :description => "On Whidbey Island with our friends the Carsons and their 54 New Yorker convertible (August 2000)")
image6 = car1.our_car_images.create(:image_path => "cars/61NY_6.jpg", :description => "1961 Chrysler New Yorker Convertible")
image7 = car1.our_car_images.create(:image_path => "cars/61NY_7.jpg", :description => "1961 Chrysler New Yorker Convertible")
image8 = car1.our_car_images.create(:image_path => "cars/61NY_8.jpg", :description => "Walter P Chrysler meet in Port Townsend, WA. (August 2000)")
image9 = car1.our_car_images.create(:image_path => "cars/61NY_9.jpg", :description => "Lisa in the New Yorker convertible at Mt St Helens (Fall 2003)")

car2 = OurCar.create(:name => "1956 Chrysler Imperial Southampton", :description => "Our other favorite car", :thumb => "thumbs/56SH.jpg")
image1 = car2.our_car_images.create(:image_path => "cars/61NY_1.jpg", :description => "Walter P Chrysler meet in Port Townsend, WA. Check out the ladies! (August 2000)")
image2 = car2.our_car_images.create(:image_path => "cars/61NY_2.jpg", :description => "1961 Chrysler New Yorker Convertible")
image3 = car2.our_car_images.create(:image_path => "cars/61NY_3.jpg", :description => "Lisa in the New Yorker convertible at Mt St Helens (Fall 2003)")
image4 = car2.our_car_images.create(:image_path => "cars/61NY_4.jpg", :description => "With our late friend Jim Harris' Ghia limousine (1994)")
image5 = car2.our_car_images.create(:image_path => "cars/61NY_5.jpg", :description => "On Whidbey Island with our friends the Carsons and their 54 New Yorker convertible (August 2000)")
image6 = car2.our_car_images.create(:image_path => "cars/61NY_6.jpg", :description => "1961 Chrysler New Yorker Convertible")
image7 = car2.our_car_images.create(:image_path => "cars/61NY_7.jpg", :description => "1961 Chrysler New Yorker Convertible")
image8 = car2.our_car_images.create(:image_path => "cars/61NY_8.jpg", :description => "Walter P Chrysler meet in Port Townsend, WA. (August 2000)")
image9 = car2.our_car_images.create(:image_path => "cars/61NY_9.jpg", :description => "Lisa in the New Yorker convertible at Mt St Helens (Fall 2003)")

car3 = OurCar.create(:name => "1965 Plymouth Valiant Station Wagon", :description => "Our blue favorite car", :thumb => "thumbs/65PV.jpg")

car4 = OurCar.create(:name => "1931 Chrysler CD Deluxe Roadster", :description => "Our old favorite car", :thumb => "thumbs/31CD.jpg")

car5 = OurCar.create(:name => "1956 Chrysler 300B", :description => "Our other favorite car", :thumb => "thumbs/56300B.jpg")