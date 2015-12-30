#---------------------------------------------------------------------------
# Create our cars for "About Us" page
#---------------------------------------------------------------------------

# Create Services
service1 = Service.create(:name => "Instrument Cluster Restoration", :description => "Including A, B, and E-body", :description_long => "")
thumb = service1.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service1.service_images.create(:image_path => "services/cluster-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service1.service_images.create(:image_path => "services/cluster-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service1.service_images.create(:image_path => "services/cluster-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service2 = Service.create(:name => "Highway Hi-Fi Restoration", :description => "Restoration and parts", :description_long => "Replace your crumbling, deteriorated shock mount cushions with our high quality, reproduction cushions. Made of a superior material to ensure long life, and die-cut for accurate fit. Restores proper support to motorboard assembly while maintaining essential vibration dampening. Replaces part numbers 84 000 411 and 84 000 401. Use 3M Black weatherstrip adhesive (#08011) or equivalent for installation. Set of three is $90, plus $12 for US shipping/insurance.")
thumb = service2.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service2.service_images.create(:image_path => "services/hifi-main.jpg", :description => "", :main_image => true)
image2 = service2.service_images.create(:image_path => "services/hifi-second.jpg", :description => "", :main_image => false)
image3 = service2.service_images.create(:image_path => "services/hifi-third.jpg", :description => "", :main_image => false)

service3 = Service.create(:name => "Tachometer Service and Calibration", :description => "Including A, B, and E-body", :description_long => "")
thumb = service3.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service3.service_images.create(:image_path => "services/tachometer-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service3.service_images.create(:image_path => "services/tachometer-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service3.service_images.create(:image_path => "services/tachometer-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service4 = Service.create(:name => "Rebuilt electroluminescent power packs", :description => "Including A, B, and E-body", :description_long => "")
thumb = service4.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service4.service_images.create(:image_path => "services/electroluminescent-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service4.service_images.create(:image_path => "services/electroluminescent-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service4.service_images.create(:image_path => "services/electroluminescent-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service5 = Service.create(:name => "Electroluminescent Gauge Services", :description => "Restoration, repair and calibration", :description_long => "")
thumb = service5.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service5.service_images.create(:image_path => "services/e-gauge-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service5.service_images.create(:image_path => "services/e-gauge-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service5.service_images.create(:image_path => "services/e-gauge-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service6 = Service.create(:name => "Distributor rebuilding", :description => "With advance curve modification", :description_long => "")
thumb = service6.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service6.service_images.create(:image_path => "services/e-gauge-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service6.service_images.create(:image_path => "services/e-gauge-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service6.service_images.create(:image_path => "services/e-gauge-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service7 = Service.create(:name => "Switches", :description => "Switches of all types rebuilt", :description_long => "")
thumb = service7.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service7.service_images.create(:image_path => "services/e-gauge-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service7.service_images.create(:image_path => "services/e-gauge-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service7.service_images.create(:image_path => "services/e-gauge-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service8 = Service.create(:name => "Other Rebuilt Parts", :description => "Mirror-matics, Auto-pilot servos and electric motors rebuilt", :description_long => "")
thumb = service8.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service8.service_images.create(:image_path => "services/e-gauge-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service8.service_images.create(:image_path => "services/e-gauge-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service8.service_images.create(:image_path => "services/e-gauge-third.jpg", :description => "", :main_image => false, :thumb_image => false)

# service items
service_price_list1 = ServicePriceList.create(:name => "Electroluminescent Power Pack", :service => service1)
service_price_list2 = ServicePriceList.create(:name => "Instrument Cluster Service", :service => service1)
service_price_list3 = ServicePriceList.create(:name => "Radio Service", :service => service1)
service_price_list4 = ServicePriceList.create(:name => "Clock Service", :service => service1)

# Create service applications
imp_make = Spree::Make.where("name=?", "Imperial").first
imp_app = Spree::Application.where("make_id=? AND model_id IS ?", imp_make.id, nil).first
service_app = ServiceApplication.create(:application => imp_app, :start_year => 1960, :end_year => 1960)

service_item1 = ServiceItem.create(:name => "Power pack rebuilt, exchange", :description => "Power pack rebuilt, exchange", :price => 75.00, :service_price_list => service_price_list1, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Power pack rebuilt, outright (includes $75 core charge)", :description => "Power pack rebuilt, outright (includes $75 core charge)", :price => 175.00, :service_price_list => service_price_list1, :service_application => service_app)

service_item1 = ServiceItem.create(:name => "Internal voltage limiter conversion, solid state", :description => "Internal voltage limiter conversion, solid state", :price => 125.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Replace bimetallic element & calibrate thermal gauges, each", :description => "", :price => 85.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Calibrate thermal gauges, each", :description => "", :price => 65.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Replace gauge pointer", :description => "", :price => 95.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Repair pointer illumination", :description => "", :price => 80.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item6 = ServiceItem.create(:name => "Repair electroluminescent gauge face, each", :description => "", :price => 45.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item7 = ServiceItem.create(:name => "Service and calibrate speedometer", :description => "", :price => 145.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item8 = ServiceItem.create(:name => "Rebush speedometer frame and magnet assembly", :description => "", :price => 60.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item9 = ServiceItem.create(:name => "Replace speedometer or tachometer pointer", :description => "", :price => 105.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item10 = ServiceItem.create(:name => "Repair push-button illumination panel", :description => "", :price => 45.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item11 = ServiceItem.create(:name => "Strip and recolor pointers (set)", :description => "", :price => 105.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item12 = ServiceItem.create(:name => "Restore gauge faces (set)", :description => "", :price => 90.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item13 = ServiceItem.create(:name => "Polish instrument lenses (set)", :description => "", :price => 65.00, :service_price_list => service_price_list2, :service_application => service_app)

service_item1 = ServiceItem.create(:name => "Repair radio dial face illumination", :description => "", :price => 45.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Replace pointer", :description => "", :price => 95.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Repair pointer", :description => "", :price => 85.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Strip and recolor pointer", :description => "", :price => 20.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Detail radio face and polish lens", :description => "", :price => 65.00, :service_price_list => service_price_list3, :service_application => service_app)

service_item1 = ServiceItem.create(:name => "Repair original electro-mechanical movement", :description => "", :price => 125.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Quartz movement conversion", :description => "", :price => 145.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Hand replacement, each", :description => "", :price => 85.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Repair hand illumination, each", :description => "", :price => 85.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Repair face illumination", :description => "", :price => 35.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item6 = ServiceItem.create(:name => "Strip and recolor hands, pair", :description => "", :price => 40.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item7 = ServiceItem.create(:name => "Detail clock face and polish lens", :description => "", :price => 50.00, :service_price_list => service_price_list4, :service_application => service_app)