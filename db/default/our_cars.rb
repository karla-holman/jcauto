# Create Our Cars
car1 = OurCar.create(:name => "1961 Chrysler New Yorker Convertible", :description => "Our favorite car", :thumb => "cars/Car-20.png")
image1 = car1.our_car_images.create(:image_path => "Header Image.png", :description => "Our Car in California")