#---------------------------------------------------------------------------
# Create our cars for "About Us" page
#---------------------------------------------------------------------------

# Create Services
=begin
service5 = Service.create(:name => "Instrument Cluster Restoration", :description => "Including A, B, and E-body", :description_long => "")
thumb = service5.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service5.service_images.create(:image_path => "services/cluster-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service5.service_images.create(:image_path => "services/cluster-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service5.service_images.create(:image_path => "services/cluster-third.jpg", :description => "", :main_image => false, :thumb_image => false)

service7 = Service.create(:name => "Highway Hi-Fi Restoration", :description => "Restoration and parts", :description_long => "Replace your crumbling, deteriorated shock mount cushions with our high quality, reproduction cushions. Made of a superior material to ensure long life, and die-cut for accurate fit. Restores proper support to motorboard assembly while maintaining essential vibration dampening. Replaces part numbers 84 000 411 and 84 000 401. Use 3M Black weatherstrip adhesive (#08011) or equivalent for installation. Set of three is $90, plus $12 for US shipping/insurance.")
thumb = service7.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service7.service_images.create(:image_path => "services/hifi-main.jpg", :description => "", :main_image => true)
image2 = service7.service_images.create(:image_path => "services/hifi-second.jpg", :description => "", :main_image => false)
image3 = service7.service_images.create(:image_path => "services/hifi-third.jpg", :description => "", :main_image => false)

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

service6 = Service.create(:name => "Distributor rebuilding", :description => "With advance curve modification", :description_long => "")
thumb = service6.service_images.create(:image_path => "services/service-thumb.jpg", :description => "", :main_image => false, :thumb_image => true)
image1 = service6.service_images.create(:image_path => "services/e-gauge-main.jpg", :description => "", :main_image => true, :thumb_image => false)
image2 = service6.service_images.create(:image_path => "services/e-gauge-second.jpg", :description => "", :main_image => false, :thumb_image => false)
image3 = service6.service_images.create(:image_path => "services/e-gauge-third.jpg", :description => "", :main_image => false, :thumb_image => false)
=end

service1 = Service.create(:name => "Gauge Services", :description => "Restoration, repair and calibration of electroluminescent and regular gauges", :description_long => " What is electroluminescence? How do these gauges light without bulbs, filaments, or gases? The answer lies in ceramic engineering. The gauges and pointers are composed of laminated layers of material which glow when a high-voltage alternating current is applied. As a result, the pointers are a light source in themselves, as are the gauges. A typical gauge or pointer is composed of several layers:<ul><li>A sheet of vitreous enameling steel forms the instrument back.</li><li>A layer of solid ceramic is applied to the steel sheet.</li><li>Another layer is added which has electroluminescent phosphor suspended in ceramic.</li><li>A transparent, electrically conducting layer is then added.</li><li>A finish layer of transparent glass coating is sprayed on.</li></ul><strong>The Power Pack</strong>. The gauges and pointers are powered by a power pack, which converts the 12 volt D/C to 200 volts A/C at 250 cycles per second. The power pack on a 1960-2 Chrysler or 1960-3 Imperial is mounted on the cowl side panel underneath the instrument panel. On the 1966-67 Chargers, it is mounted to the lower lip of the instrument panel, behind the glove box.")
thumb = service1.service_images.create(:image_path => "services/e-gauge-thumb.png", :description => "", :main_image => false, :thumb_image => true)
image1 = service1.service_images.create(:image_path => "services/e-gauge-main.png", :description => "", :main_image => true, :thumb_image => false)
image2 = service1.service_images.create(:image_path => "services/e-gauge-second.png", :description => "", :main_image => false, :thumb_image => false)
# image3 = service1.service_images.create(:image_path => "services/e-gauge-third.png", :description => "", :main_image => false, :thumb_image => false)

service2 = Service.create(:name => "Control and Switch Services", :description => "Switches of all types rebuilt", :description_long => "")
thumb = service2.service_images.create(:image_path => "services/switch-thumb.png", :description => "", :main_image => false, :thumb_image => true)
image1 = service2.service_images.create(:image_path => "services/switch-main.png", :description => "", :main_image => true, :thumb_image => false)
image2 = service2.service_images.create(:image_path => "services/switch-second.png", :description => "", :main_image => false, :thumb_image => false)
image3 = service2.service_images.create(:image_path => "services/switch-third.png", :description => "", :main_image => false, :thumb_image => false)

service3 = Service.create(:name => "Other Rebuilt Parts", :description => "Mirror-matics, Auto-pilot servos and electric motors rebuilt", :description_long => "")
thumb = service3.service_images.create(:image_path => "services/other-thumb.png", :description => "", :main_image => false, :thumb_image => true)
image1 = service3.service_images.create(:image_path => "services/other-main.png", :description => "", :main_image => true, :thumb_image => false)
# image2 = service3.service_images.create(:image_path => "services/other-second.png", :description => "", :main_image => false, :thumb_image => false)
# image3 = service3.service_images.create(:image_path => "services/other-third.png", :description => "", :main_image => false, :thumb_image => false)

service4 = Service.create(:name => "Highway Hi-Fi Restoration", :description => "Restoration and parts", :description_long => "Replace your crumbling, deteriorated shock mount cushions with our high quality, reproduction cushions. Made of a superior material to ensure long life, and die-cut for accurate fit. Restores proper support to motorboard assembly while maintaining essential vibration dampening. Replaces part numbers 84 000 411 and 84 000 401. Use 3M Black weatherstrip adhesive (#08011) or equivalent for installation. Set of three is $90, plus $12 for US shipping/insurance.")
thumb = service4.service_images.create(:image_path => "services/hifi-thumb.png", :description => "", :main_image => false, :thumb_image => true)
image1 = service4.service_images.create(:image_path => "services/hifi-main.jpg", :description => "", :main_image => true)
image2 = service4.service_images.create(:image_path => "services/hifi-second.jpg", :description => "", :main_image => false)
image3 = service4.service_images.create(:image_path => "services/hifi-third.jpg", :description => "", :main_image => false)

# Electroluminescent
service_price_list1_em = ServicePriceList.create(:name => "Electroluminescent Power Pack", :service => service1)
service_price_list2_em = ServicePriceList.create(:name => "Electroluminescent Instrument Cluster Service", :service => service1)
service_price_list8_em = ServicePriceList.create(:name => "Electroluminescent Tachometer Service", :service => service1)
service_price_list3_em = ServicePriceList.create(:name => "Electroluminescent Radio Service", :service => service1)
service_price_list4_em = ServicePriceList.create(:name => "Electroluminescent Clock Service", :service => service1)

# service items 1- Gauge Restoration
service_price_list1 = ServicePriceList.create(:name => "Power Pack", :service => service1)
service_price_list2 = ServicePriceList.create(:name => "Instrument Cluster Service", :service => service1)
service_price_list8 = ServicePriceList.create(:name => "Tachometer Service", :service => service1)
service_price_list3 = ServicePriceList.create(:name => "Radio Service", :service => service1)
service_price_list4 = ServicePriceList.create(:name => "Clock Service", :service => service1)

# Service Items 2 - General Restoration
service_price_list5 = ServicePriceList.create(:name => "Control and Switch Services", :service => service2)

# Service Items ? - General Restoration
service_price_list6 = ServicePriceList.create(:name => "Heater and A/C", :service => service3)
service_price_list7 = ServicePriceList.create(:name => "Power Windows and Seat", :service => service3)

# Create service applications
imp_make = Spree::Make.where("name=?", "Imperial").first
imp_app = Spree::Application.where("make_id=? AND model_id IS ?", imp_make.id, nil).first

chrysler_make = Spree::Make.where("name=?", "Chrysler").first
chrysler_app = Spree::Application.where("make_id=? AND model_id IS ?", chrysler_make.id, nil).first

dodge_make = Spree::Make.where("name=?", "Dodge").first
charger_model = Spree::Model.where("name=?", "Charger").first
dodge_charger_app = Spree::Application.where("make_id=? AND model_id=?", dodge_make.id, charger_model.id).first
dodge_app = Spree::Application.where("make_id=? AND model_id IS ?", dodge_make.id, nil).first

plymouth_make = Spree::Make.where("name=?", "Plymouth").first
plymouth_app = Spree::Application.where("make_id=? AND model_id IS ?", plymouth_make.id, nil).first

desoto_make = Spree::Make.where("name=?", "DeSoto").first
desoto_app = Spree::Application.where("make_id=? AND model_id IS ?", desoto_make.id, nil).first

# Imperial
service_app = ServiceApplication.create(:application => imp_app, :start_year => 1960, :end_year => 1960)
service_app2 = ServiceApplication.create(:application => imp_app, :start_year => 1961, :end_year => 1963)
service_imperial1 = ServiceApplication.create(:application => imp_app, :start_year => 1956, :end_year => 1956)
service_imperial2 = ServiceApplication.create(:application => imp_app, :start_year => 1957, :end_year => 1957)

# Chrysler
service_app_chrysler1 = ServiceApplication.create(:application => chrysler_app, :start_year => 1960, :end_year => 1962)
service_app_chrysler2 = ServiceApplication.create(:application => chrysler_app, :start_year => 1956, :end_year => 1956)
service_app_chrysler3 = ServiceApplication.create(:application => chrysler_app, :start_year => 1957, :end_year => 1957)

# Dodge
service_app_dodge_charger1 = ServiceApplication.create(:application => dodge_charger_app, :start_year => 1966, :end_year => 1967)
service_app_dodge1 = ServiceApplication.create(:application => dodge_app, :start_year => 1956, :end_year => 1956)
service_app_dodge2 = ServiceApplication.create(:application => dodge_app, :start_year => 1957, :end_year => 1957)

# Plymouth
service_app_plymouth1 = ServiceApplication.create(:application => plymouth_app, :start_year => 1956, :end_year => 1956)
service_app_plymouth2 = ServiceApplication.create(:application => plymouth_app, :start_year => 1957, :end_year => 1957)

# Desoto
service_app_desoto1 = ServiceApplication.create(:application => desoto_app, :start_year => 1956, :end_year => 1956)
service_app_desoto2 = ServiceApplication.create(:application => desoto_app, :start_year => 1957, :end_year => 1957)

# 1960 Imperial
service_item1 = ServiceItem.create(:name => "Power pack rebuilt, exchange", :core_name => "Power pack rebuilt, outright (includes $100 core charge)", :price => 75.00, :core_price => 175.00, :service_price_list => service_price_list1_em, :service_application => service_app)

service_item1 = ServiceItem.create(:name => "Internal voltage limiter conversion, solid state", :core_name => "", :price => 125.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Replace bimetallic element & calibrate thermal gauges, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Calibrate thermal gauges, each", :core_name => "", :price => 65.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Replace gauge pointer", :core_name => "", :price => 95.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Repair pointer illumination", :core_name => "", :price => 80.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item6 = ServiceItem.create(:name => "Repair electroluminescent gauge face, each", :core_name => "", :price => 45.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item7 = ServiceItem.create(:name => "Service and calibrate speedometer", :core_name => "", :price => 145.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item8 = ServiceItem.create(:name => "Rebush speedometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item9 = ServiceItem.create(:name => "Replace speedometer or tachometer pointer", :core_name => "", :price => 105.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item10 = ServiceItem.create(:name => "Repair push-button illumination panel", :core_name => "", :price => 45.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item11 = ServiceItem.create(:name => "Strip and recolor pointers (set)", :core_name => "", :price => 105.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item12 = ServiceItem.create(:name => "Restore gauge faces (set)", :core_name => "", :price => 90.00, :service_price_list => service_price_list2, :service_application => service_app)
service_item13 = ServiceItem.create(:name => "Polish instrument lenses (set)", :core_name => "", :price => 65.00, :service_price_list => service_price_list2, :service_application => service_app)

# Radio
service_item1 = ServiceItem.create(:name => "Repair radio dial face illumination", :core_name => "", :price => 45.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Replace pointer", :core_name => "", :price => 95.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Repair pointer", :core_name => "", :price => 85.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Strip and recolor pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list3, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Detail radio face and polish lens", :core_name => "", :price => 65.00, :service_price_list => service_price_list3, :service_application => service_app)

# Clock
service_item1 = ServiceItem.create(:name => "Repair original electro-mechanical movement", :core_name => "", :price => 125.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item2 = ServiceItem.create(:name => "Quartz movement conversion", :core_name => "", :price => 145.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item3 = ServiceItem.create(:name => "Hand replacement, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item4 = ServiceItem.create(:name => "Repair hand illumination, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item5 = ServiceItem.create(:name => "Repair face illumination", :core_name => "", :price => 35.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item6 = ServiceItem.create(:name => "Strip and recolor hands, pair", :core_name => "", :price => 40.00, :service_price_list => service_price_list4, :service_application => service_app)
service_item7 = ServiceItem.create(:name => "Detail clock face and polish lens", :core_name => "", :price => 50.00, :service_price_list => service_price_list4, :service_application => service_app)

# 1961-63 Imperial Services
# Gauge (EM)
service_item1 = ServiceItem.create(:name => "Power pack rebuilt, exchange", :core_name => "Power pack rebuilt, outright (includes $100 core charge; subject to core availability)", :price => 75.00, :core_price => 175.00, :service_price_list => service_price_list1_em, :service_application => service_app2)

service_item1 = ServiceItem.create(:name => "Internal voltage limiter conversion, solid state", :core_name => "", :price => 125.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item2 = ServiceItem.create(:name => "Replace bimetallic element & calibrate thermal gauges, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item3 = ServiceItem.create(:name => "Calibrate thermal gauges, each", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item3 = ServiceItem.create(:name => "Upgrade ammeter", :core_name => "", :price => 55.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item4 = ServiceItem.create(:name => "Replace electroluminescent gauge pointer (ammeter, fuel, oil, temperature) (requires gauge calibration as well) - subject to availability", :core_name => "", :price => 95.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item5 = ServiceItem.create(:name => "Strip and recolor electroluminescent gauge pointers (set of four)", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Repair electroluminescent gauge face illumination, each", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item6 = ServiceItem.create(:name => "Restore electroluminescent gauge faces, set of four", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item6 = ServiceItem.create(:name => "Replace weather checked or damaged gauge face mask (ammeter, fuel, oil, temperature), each - subject to availability", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item6 = ServiceItem.create(:name => "Repair electroluminescent pointer illumination (ammeter, fuel, oil, temperature) (requires gauge calibration as well)", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item7 = ServiceItem.create(:name => "Service and calibrate speedometer", :core_name => "", :price => 175.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Rebush speedometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Reproduction speedometer cable", :core_name => "", :price => 65.00, :alternate_price => "out of stock", :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item8 = ServiceItem.create(:name => "Replace odometer reset cable", :core_name => "", :price => 50.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item9 = ServiceItem.create(:name => "Replace trip odometer", :core_name => "", :price => 75.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item10 = ServiceItem.create(:name => "Replace electroluminescent rod", :core_name => "", :price => 50.00, :alternate_price => '3.5": $30<br>5": $35<br>7.5": $40<br>12": $50', :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item11 = ServiceItem.create(:name => "Polish instrument lenses (set)", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item12 = ServiceItem.create(:name => "Detail lens lettering and numerals", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Detail inner gauge bezel", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Replace melted or damaged inner gauge bezel (requires detail service as well)", :core_name => "", :price => 75.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Replace parking brake warning lens", :core_name => "", :price => 20.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Replace high beam indicator lens", :core_name => "", :price => 20.00, :service_price_list => service_price_list2_em, :service_application => service_app2)
service_item13 = ServiceItem.create(:name => "Mix and match gauge components, if using multiple clusters to make one good unit", :core_name => "", :price => 65.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list2_em, :service_application => service_app2)

# Radio Service
service_item1 = ServiceItem.create(:name => "Repair radio dial face electroluminescent illumination", :core_name => "", :price => 45.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item2 = ServiceItem.create(:name => "Replace radio electroluminescent pointer - subject to availability", :core_name => "", :price => 95.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item3 = ServiceItem.create(:name => "Repair radio electroluminescent pointer", :core_name => "", :price => 85.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item4 = ServiceItem.create(:name => "Strip and recolor radio electroluminescent pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item5 = ServiceItem.create(:name => "Detail radio electroluminescent face and polish lens", :core_name => "", :price => 50.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item5 = ServiceItem.create(:name => "Detail radio pushbuttons and repaint lettering", :core_name => "", :price => 90.00, :service_price_list => service_price_list3, :service_application => service_app2)
service_item5 = ServiceItem.create(:name => "Service and adjust radio: lubricate tuner and tuner clutch mechanisms, lubricate search tune motor and drive components, adjust tuner and antenna compensator for optimal reception", :core_name => "", :price => 85.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list3, :service_application => service_app2)

# Clock Service (EM)
service_item1 = ServiceItem.create(:name => "Repair original electro-mechanical movement", :core_name => "", :price => 125.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item2 = ServiceItem.create(:name => "Quartz movement conversion", :core_name => "", :price => 185.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item3 = ServiceItem.create(:name => "Electroluminescent clock hand replacement, each (subject to availability)", :core_name => "", :price => 95.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item4 = ServiceItem.create(:name => "Repair electroluminescent clock hand illumination, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item5 = ServiceItem.create(:name => "Repair electroluminescent clock face illumination", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item6 = ServiceItem.create(:name => "Strip and recolor electroluminescent clock hands, pair", :core_name => "", :price => 40.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item7 = ServiceItem.create(:name => "Detail electroluminescent clock face and polish lens", :core_name => "", :price => 50.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item7 = ServiceItem.create(:name => "Replace clock electroluminescent rod", :core_name => "", :price => 40.00, :service_price_list => service_price_list4_em, :service_application => service_app2)
service_item7 = ServiceItem.create(:name => "Replace clock reset knob", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app2)

# Control Switches
service_item1 = ServiceItem.create(:name => "Repair electroluminescent switch illumination disc, each", :core_name => "", :price => 50.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent TorqueFlite push-button illumination panel", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Restore TorqueFlite pushbutton set", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild headlamp switch, '61, exchange", :core_name => "Core charge, headlamp switch", :price => 95.00, :core_price => 75.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "New headlamp switch, '62-3", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild AutoPilot control switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild power antenna switch", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild convertible top switch", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild map lamp switch", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Repair broken plastic washer switch shaft, '61", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild electric washer switch, '61-3", :core_name => "", :price => 25.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild variable speed wiper switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild rear defogger switch", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild turn signal switch, exchange", :core_name => "Core charge, turn signal switch", :price => 145.00, :core_price => 85.00, :service_price_list => service_price_list5, :service_application => service_app2)

# Heater and A/C
service_item1 = ServiceItem.create(:name => "Repair electroluminescent heater or A/C pushbutton illumination panel", :core_name => "", :price => 45.00, :service_price_list => service_price_list6, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild heater pushbutton control switch, exchange", :core_name => "Core charge, heater pushbutton control switch", :price => 195.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild A/C pushbutton control switch, exchange", :core_name => "Core charge, A/C pushbutton control switch", :price => 165.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Restore heater or A/C pushbutton set", :core_name => "", :price => 85.00, :service_price_list => service_price_list6, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild A/C push-pull fan switch", :core_name => "", :price => 95.00, :service_price_list => service_price_list6, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild heater control valve", :core_name => "Core charge, heater control valve (Ranco or Robertshaw brand accepted only)", :price => 165.00, :core_price => 100.00, :service_price_list => service_price_list6, :service_application => service_app2)

# Power Windows and Seats
service_item1 = ServiceItem.create(:name => "Rebuild power window motor", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Repair/replace power window motor circuit breaker", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild power window motor transmission", :core_name => "", :price => 85.00, :service_price_list => service_price_list7, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild 6-gang (master) power window/vent switch", :core_name => "", :price => 285.00, :service_price_list => service_price_list7, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild single power window switch", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app2)
service_item1 = ServiceItem.create(:name => "Rebuild power seat switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app2)

# 1960-62 Chrysler Services
# Gauge (EM)
service_item1 = ServiceItem.create(:name => "Power pack rebuilt, exchange", :core_name => "Power pack rebuilt, outright (includes $100 core charge; subject to core availability)", :price => 75.00, :core_price => 175.00, :service_price_list => service_price_list1_em, :service_application => service_app_chrysler1)

service_item1 = ServiceItem.create(:name => "Solid state voltage limiter conversion, internal", :core_name => "", :price => 125.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item2 = ServiceItem.create(:name => "Replace bimetallic element & calibrate thermal gauges, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item3 = ServiceItem.create(:name => "Calibrate thermal gauges, each", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item3 = ServiceItem.create(:name => "Upgrade ammeter gauge (1961, 1962 only)", :core_name => "", :price => 55.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item4 = ServiceItem.create(:name => "Replace electroluminescent gauge pointer (ammeter, fuel, oil, temperature) (requires gauge calibration as well)", :core_name => "", :price => 95.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item5 = ServiceItem.create(:name => "Repair electroluminescent pointer illumination (ammeter, fuel, oil, temperature) (requires gauge calibration as well)", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Repair electroluminescent gauge face illumination, each", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item6 = ServiceItem.create(:name => "Strip and recolor electroluminescent pointers (set of five)", :core_name => "", :price => 100.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item6 = ServiceItem.create(:name => "Restore electroluminescent gauge faces (set of four)", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item6 = ServiceItem.create(:name => "Restore electroluminescent speedometer faceplate", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item7 = ServiceItem.create(:name => "Service and calibrate speedometer", :core_name => "", :price => 145.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Rebush speedometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Prep, detail, and paint metal speedometer housing", :core_name => "", :price => 35.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item8 = ServiceItem.create(:name => "Replace speedometer housing", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item9 = ServiceItem.create(:name => "Replace speedometer lower plastic shield", :core_name => "", :price => 35.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item10 = ServiceItem.create(:name => "Detail paint speedometer shroud", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item11 = ServiceItem.create(:name => "Replace speedometer electroluminescent pointer (requires speedometer calibration as well)", :core_name => "", :price => 105.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item12 = ServiceItem.create(:name => "Reproduction speedometer cable", :core_name => "", :price => 65.00, :alternate_price => "out of stock", :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Detail paint inner gauge housing", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Re-metallize and detail paint inner gauge housing", :core_name => "", :price => 195.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Replace damage or distorted brake warning light lens", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Polish Astra-dome lens and detail paint", :core_name => "", :price => 145.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Replace broken or missing Astra-dome mounting ear (each)", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Replace Astra-dome lens (limited availability)", :core_name => "", :price => 450.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Mix and match gauge components, if using multiple clusters to make one good unit", :core_name => "", :price => 85.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list2_em, :service_application => service_app_chrysler1)

# Tachometer (EM)
service_item13 = ServiceItem.create(:name => "Rebuild, service, & calibrate tachometer", :core_name => "", :price => 185.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Rebush tachometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Replace tachometer electroluminescent pointer (subject to availability) - Since the tachometer pointer replacement requires removal of the crimped bezel as well as recalibration of the gauge, it must be performed in conjunction with the rebuilding and calibration service.", :core_name => "", :price => 105.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Repair tachometer electroluminescent pointer (requires gauge calibration as well)", :core_name => "", :price => 85.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Strip and recolor tachometer electroluminescent pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Repair tachometer electroluminescent faceplate", :core_name => "", :price => 45.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Detail tachometer face, lens, and bezel", :core_name => "", :price => 85.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Replace scratched or damaged tachometer glass plate", :core_name => "", :price => 65.00, :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)
service_item13 = ServiceItem.create(:name => "Exact reproduction mechanical tach cable", :core_name => "", :price => 85.00, :alternate_price => "out of stock", :service_price_list => service_price_list8_em, :service_application => service_app_chrysler1)

# Radio (EM)
service_item1 = ServiceItem.create(:name => "Repair radio electroluminescent dial face illumination", :core_name => "", :price => 45.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Replace radio electroluminescent pointer", :core_name => "", :price => 95.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Repair radio electroluminescent pointer", :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Strip and recolor radio electroluminescent pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Detail radio electroluminescent face and polish lens", :core_name => "", :price => 65.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Detail radio pushbuttons, GoldenTone", :core_name => "", :price => 65.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Detail radio pushbuttons and repaint lettering, GoldenTouch", :core_name => "", :price => 95.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rewire radio illumination so that radio lighting comes on with dash lighting, rather than radio power switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Service and adjust radio: lubricate tuner and tuner clutch mechanisms, lubricate search tune motor and drive components, adjust tuner and antenna compensator for optimal reception", :core_name => "", :price => 45.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => 'Replace 6"x9" radio speaker', :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild radio foot switch for Search-Tune function", :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Install iPod jack", :core_name => "", :price => 125.00, :service_price_list => service_price_list3_em, :service_application => service_app_chrysler1)

# Clock (EM)
service_item1 = ServiceItem.create(:name => "Repair original electro-mechanical movement", :core_name => "", :price => 125.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Quartz clock movement conversion", :core_name => "", :price => 175.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Replace electroluminescent clock hand, each (subject to availability)", :core_name => "", :price => 105.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent clock hand illumination, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent clock  face illumination", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Strip and recolor electroluminescent clock hands, pair", :core_name => "", :price => 40.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Detail electroluminescent clock face, inner plastic bezel and polish lens", :core_name => "", :price => 65.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Replace clock reset knob", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app_chrysler1)

# Control Switches
service_item1 = ServiceItem.create(:name => "Rebuild turn signal switch, exchange", :core_name => "Core charge, turn signal switch", :price => 145.00, :core_price => 100.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild turn signal canceling switch, exchange", :core_name => "Core charge, turn signal canceling switch", :price => 125.00, :core_price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild headlamp switch, exchange (1960-61)", :core_name => "Core charge, headlamp switch", :price => 125.00, :core_price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Headlamp switch, new (1962)", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild map lamp switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild dome lamp switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild rear defogger switch", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild variable speed wiper switch", :core_name => "", :price => 125.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild single speed wiper switch", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Repair broken plastic washer switch shaft (1960-61)", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild electric washer switch (1961-62)", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild convertible top switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild power antenna switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild power tailgate switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild AutoPilot control switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Restore TorqueFlite pushbuttons, set", :core_name => "", :price => 125.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Service transmission shift quadrant", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app_chrysler1)

# Heater and A/C
service_item1 = ServiceItem.create(:name => "Restore heater or A/C control switch pushbuttons, set", :core_name => "", :price => 125.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild heater pushbutton control switch, exchange", :core_name => "Core charge, heater pushbutton control switch", :price => 195.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild A/C pushbutton control switch, exchange", :core_name => "Core charge, A/C pushbutton control switch", :price => 165.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild A/C push-pull fan switch", :core_name => "", :price => 95.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild heater control valve, exchange", :core_name => "Core charge, heater control valve (Ranco or Robertshaw accepted only)", :price => 165.00, :core_price => 100.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Reproduction heater control valve cable", :core_name => "", :price => 45.00, :service_price_list => service_price_list6, :service_application => service_app_chrysler1)

# Power Windows and Seats
service_item1 = ServiceItem.create(:name => "Rebuild power window motor", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Repair/replace window motor circuit breaker", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild power window motor transmission", :core_name => "", :price => 85.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild 4-gang (master) power window switch", :core_name => "", :price => 225.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild single power window switch", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Good core AutoLite window transmission housing with intact mounting legs (limited availability)", :core_name => "", :price => 100.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)
service_item1 = ServiceItem.create(:name => "Rebuild power seat switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app_chrysler1)

# 1966-67 Dodge Charger
# Gauge (EM)
service_item1 = ServiceItem.create(:name => "Power pack rebuilt, exchange", :core_name => "Power pack rebuilt, outright (includes $100 core charge; subject to core availability)", :price => 75.00, :core_price => 175.00, :service_price_list => service_price_list1_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Power pack mounting bracket", :core_name => "", :price => 75.00, :service_price_list => service_price_list1_em, :service_application => service_app_dodge_charger1)

service_item1 = ServiceItem.create(:name => "Solid state voltage limiter conversion, internal", :core_name => "", :price => 125.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace bimetallic element & calibrate thermal gauges, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Calibrate thermal gauges, each", :core_name => "", :price => 65.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Upgrade ammeter gauge (1961, 1962 only)", :core_name => "", :price => 55.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace electroluminescent gauge pointer (ammeter, fuel, oil, temperature) (requires gauge calibration as well)", :core_name => "", :price => 95.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent pointer illumination (ammeter, fuel, oil, temperature) (requires gauge calibration as well)", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent gauge face illumination, each", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Strip and recolor electroluminescent pointers (set of five)", :core_name => "", :price => 100.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Restore electroluminescent gauge faces (set of four)", :core_name => "", :price => 80.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Restore electroluminescent speedometer faceplate", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Service and calibrate speedometer", :core_name => "", :price => 145.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebush speedometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Prep, detail, and paint metal speedometer housing", :core_name => "", :price => 35.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace speedometer housing", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace speedometer lower plastic shield", :core_name => "", :price => 35.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail paint speedometer shroud", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace speedometer electroluminescent pointer (requires speedometer calibration as well)", :core_name => "", :price => 105.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Reproduction speedometer cable", :core_name => "", :price => 25.00, :alternate_price => "out of stock", :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail paint inner gauge housing", :core_name => "", :price => 85.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Re-metallize and detail paint inner gauge housing", :core_name => "", :price => 195.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace damage or distorted brake warning light lens", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Polish Astra-dome lens and detail paint", :core_name => "", :price => 145.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace broken or missing Astra-dome mounting ear (each)", :core_name => "", :price => 45.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace Astra-dome lens (limited availability)", :core_name => "", :price => 450.00, :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Mix and match gauge components, if using multiple clusters to make one good unit", :core_name => "", :price => 25.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list2_em, :service_application => service_app_dodge_charger1)

# Tachometer (electroluminescent)
service_item13 = ServiceItem.create(:name => "Rebuild, service, & calibrate tachometer", :core_name => "", :price => 185.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Rebush tachometer frame and magnet assembly", :core_name => "", :price => 60.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Replace tachometer electroluminescent pointer (subject to availability) - Since the tachometer pointer replacement requires removal of the crimped bezel as well as recalibration of the gauge, it must be performed in conjunction with the rebuilding and calibration service.", :core_name => "", :price => 105.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Repair tachometer electroluminescent pointer (requires gauge calibration as well)", :core_name => "", :price => 85.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Strip and recolor tachometer electroluminescent pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Repair tachometer electroluminescent faceplate", :core_name => "", :price => 45.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Detail tachometer face, lens, and bezel", :core_name => "", :price => 85.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Replace scratched or damaged tachometer glass plate", :core_name => "", :price => 65.00, :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)
service_item13 = ServiceItem.create(:name => "Exact reproduction mechanical tach cable", :core_name => "", :price => 85.00, :alternate_price => "out of stock", :service_price_list => service_price_list8_em, :service_application => service_app_dodge_charger1)

# Radio (EM)
service_item1 = ServiceItem.create(:name => "Repair radio electroluminescent dial face illumination", :core_name => "", :price => 45.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace radio electroluminescent pointer", :core_name => "", :price => 95.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair radio electroluminescent pointer", :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Strip and recolor radio electroluminescent pointer", :core_name => "", :price => 20.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail radio electroluminescent face and polish lens", :core_name => "", :price => 65.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail radio pushbuttons, GoldenTone", :core_name => "", :price => 65.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail radio pushbuttons and repaint lettering, GoldenTouch", :core_name => "", :price => 95.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rewire radio illumination so that radio lighting comes on with dash lighting, rather than radio power switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Service and adjust radio: lubricate tuner and tuner clutch mechanisms, lubricate search tune motor and drive components, adjust tuner and antenna compensator for optimal reception", :core_name => "", :price => 45.00, :alternate_price => "$85/hr.", :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => 'Replace 6"x9" radio speaker', :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild radio foot switch for Search-Tune function", :core_name => "", :price => 85.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Install iPod jack", :core_name => "", :price => 125.00, :service_price_list => service_price_list3_em, :service_application => service_app_dodge_charger1)

# Clock (EM)
service_item1 = ServiceItem.create(:name => "Repair original electro-mechanical movement", :core_name => "", :price => 125.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Quartz clock movement conversion", :core_name => "", :price => 175.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace electroluminescent clock hand, each (subject to availability)", :core_name => "", :price => 105.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent clock hand illumination, each", :core_name => "", :price => 85.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair electroluminescent clock  face illumination", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Strip and recolor electroluminescent clock hands, pair", :core_name => "", :price => 40.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Detail electroluminescent clock face, inner plastic bezel and polish lens", :core_name => "", :price => 65.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Replace clock reset knob", :core_name => "", :price => 35.00, :service_price_list => service_price_list4_em, :service_application => service_app_dodge_charger1)

# Control Switches
service_item1 = ServiceItem.create(:name => "Rebuild turn signal switch, exchange", :core_name => "Core charge, turn signal switch", :price => 145.00, :core_price => 100.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild turn signal canceling switch, exchange", :core_name => "Core charge, turn signal canceling switch", :price => 125.00, :core_price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild headlamp switch, exchange (1960-61)", :core_name => "Core charge, headlamp switch", :price => 125.00, :core_price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Headlamp switch, new (1962)", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild map lamp switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild dome lamp switch", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild rear defogger switch", :core_name => "", :price => 45.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild variable speed wiper switch", :core_name => "", :price => 125.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild single speed wiper switch", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair broken plastic washer switch shaft (1960-61)", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild electric washer switch (1961-62)", :core_name => "", :price => 35.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild convertible top switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild power antenna switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild power tailgate switch", :core_name => "", :price => 85.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild AutoPilot control switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Restore TorqueFlite pushbuttons, set", :core_name => "", :price => 125.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Service transmission shift quadrant", :core_name => "", :price => 75.00, :service_price_list => service_price_list5, :service_application => service_app_dodge_charger1)

# Heater and A/C
service_item1 = ServiceItem.create(:name => "Restore heater or A/C control switch pushbuttons, set", :core_name => "", :price => 125.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild heater pushbutton control switch, exchange", :core_name => "Core charge, heater pushbutton control switch", :price => 195.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild A/C pushbutton control switch, exchange", :core_name => "Core charge, A/C pushbutton control switch", :price => 165.00, :core_price => 85.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild A/C push-pull fan switch", :core_name => "", :price => 95.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild heater control valve, exchange", :core_name => "Core charge, heater control valve (Ranco or Robertshaw accepted only)", :price => 165.00, :core_price => 100.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Reproduction heater control valve cable", :core_name => "", :price => 45.00, :service_price_list => service_price_list6, :service_application => service_app_dodge_charger1)

# Power Windows and Seats
service_item1 = ServiceItem.create(:name => "Rebuild power window motor", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Repair/replace window motor circuit breaker", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild power window motor transmission", :core_name => "", :price => 85.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild 4-gang (master) power window switch", :core_name => "", :price => 225.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild single power window switch", :core_name => "", :price => 65.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Good core AutoLite window transmission housing with intact mounting legs (limited availability)", :core_name => "", :price => 100.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)
service_item1 = ServiceItem.create(:name => "Rebuild power seat switch", :core_name => "", :price => 145.00, :service_price_list => service_price_list7, :service_application => service_app_dodge_charger1)

#######################################################################################
# HIGHWAY HI-FI
#######################################################################################

# Highway Hi-Fi
service_price_list_hifi1 = ServicePriceList.create(:name => "Services", :service => service4)
service_price_list_hifi2 = ServicePriceList.create(:name => "Cabinet", :service => service4)
service_price_list_hifi3 = ServicePriceList.create(:name => "Reproduction Decals", :service => service4)
service_price_list_hifi4 = ServicePriceList.create(:name => "Reproduction Highway Hi-Fi Mounting Bracket Sets", :service => service4)

# Services
service_item1 = ServiceItem.create(:name => "Disassemble unit, clean and test electrical system, lubricate and polish motor drive shaft, clean and lubricate motor, balance tone arm, clean and detail turntable assembly and idler wheels, install suspension cushions and ground leads", :core_name => "", :price => 585.00, :service_price_list => service_price_list_hifi1)
service_item1 = ServiceItem.create(:name => "Strip cabinet, bead blast as necessary and refinish in polyurethane paint", :core_name => "", :price => 375.00, :service_price_list => service_price_list_hifi1)
service_item1 = ServiceItem.create(:name => "Strip and detail motor board", :core_name => "", :price => 95.00, :service_price_list => service_price_list_hifi1)
service_item1 = ServiceItem.create(:name => "Beadblast and refinish slide assembly", :core_name => "", :price => 95.00, :service_price_list => service_price_list_hifi1)
service_item1 = ServiceItem.create(:name => "Repair lock cylinder assembly, re-key lock", :core_name => "", :price => 65.00, :service_price_list => service_price_list_hifi1)
service_item1 = ServiceItem.create(:name => "Remove cabinet door assembly, remove pilot lamp lens, hinge, and lock assembly, rechrome cabinet door assembly (results of plating may vary according to the condition of the original; this is especially true of the embossed front panel surface), detail and reassemble cabinet door assembly", :core_name => "", :price => 325.00, :service_price_list => service_price_list_hifi1)

# Cabinet
service_item1 = ServiceItem.create(:name => "Door lock assembly with key", :core_name => "", :price => 80.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Rubber gasket for front of cabinet", :core_name => "", :price => 20.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Cushion, inside rear of cabinet", :core_name => "", :price => 10.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Ground lead, cabinet to slide assembly", :core_name => "", :price => 20.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Tone arm limit arm", :core_name => "", :price => 65.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Tone arm nylon bushings, pair ", :core_name => "", :price => 85.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Ball bearing for tone arm pivot", :core_name => "", :price => 5.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Stylus", :core_name => "", :price => 45.00, :alternate_price => "N/A", :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Pickup cartridge and stylus", :core_name => "", :price => 45.00, :alternate_price => "N/A", :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Pickup lead assembly ", :core_name => "", :price => 35.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Rubber motor mount", :core_name => "", :price => 18.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Motor drive coupling", :core_name => "", :price => 45.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Phono to radio cable", :core_name => "", :price => 210.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Phono plug assembly", :core_name => "", :price => 110.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Knob for radio-phono switch", :core_name => "", :price => 25.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Vibrator", :core_name => "", :price => 85.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Turntable drive wheel tire", :core_name => "", :price => 18.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Turntable support nylon idler wheel", :core_name => "", :price => 20.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Shaft for idler wheel", :core_name => "", :price => 10.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Shock mount cushion set", :core_name => "", :price => 90.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "New pull handle for slide assembly, stainless steel", :core_name => "", :price => 140.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Rubber bumper for slide, pair", :core_name => "", :price => 6.00, :service_price_list => service_price_list_hifi2)
service_item1 = ServiceItem.create(:name => "Ground lead, slide to motor board", :core_name => "", :price => 25.00, :service_price_list => service_price_list_hifi2)

# Reproduction Decals
service_item1 = ServiceItem.create(:name => "Tone arm decal", :core_name => "", :price => 25.00, :service_price_list => service_price_list_hifi3)
service_item1 = ServiceItem.create(:name => "Door decal", :core_name => "", :price => 35.00, :service_price_list => service_price_list_hifi3)
service_item1 = ServiceItem.create(:name => "Serial number decal (custom)", :core_name => "", :price => 12.00, :service_price_list => service_price_list_hifi3)
service_item1 = ServiceItem.create(:name => "Serial number decal (blank)", :core_name => "", :price => 6.00, :service_price_list => service_price_list_hifi3)
service_item1 = ServiceItem.create(:name => "Vibrator label", :core_name => "", :price => 8.00, :service_price_list => service_price_list_hifi3)
service_item1 = ServiceItem.create(:name => "Manufacturer label", :core_name => "", :price => 6.00, :service_price_list => service_price_list_hifi3)

# Reproduction Highway Hi-Fi Mounting Bracket Sets
service_item1 = ServiceItem.create(:name => "'56 Plymouth Highway Hi-Fi mounting bracket set", :core_name => "", :price => 400.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_plymouth1)
service_item1 = ServiceItem.create(:name => "'56 (fits Chrysler and Imperial) Highway Hi-Fi mounting bracket set", :core_name => "", :price => 150.00, :service_price_list => service_price_list_hifi4, :service_application => service_imperial1)
service_item1 = ServiceItem.create(:name => "'56 Dodge Highway Hi-Fi mounting bracket set", :core_name => "", :price => 185.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_dodge1)
service_item1 = ServiceItem.create(:name => "'56 DeSoto Highway Hi-Fi mounting bracket set (universal style)", :core_name => "", :price => 65.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_desoto1)
service_item1 = ServiceItem.create(:name => "'57 Imperial Highway Hi-Fi mounting bracket set (3 pieces)", :core_name => "", :price => 145.00, :service_price_list => service_price_list_hifi4, :service_application => service_imperial2)
service_item1 = ServiceItem.create(:name => "'57 Plymouth Highway Hi-Fi mounting bracket set", :core_name => "", :price => 95.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_plymouth2)
service_item1 = ServiceItem.create(:name => "'57 Chrysler Highway Hi-Fi mounting bracket set", :core_name => "", :price => 185.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_chrysler3)
service_item1 = ServiceItem.create(:name => "'57 (fits Dodge and DeSoto) Highway Hi-Fi mounting bracket set (universal style)", :core_name => "", :price => 65.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_dodge2)
service_item1 = ServiceItem.create(:name => "'56 (fits Chrysler and Imperial) Highway Hi-Fi mounting bracket set", :core_name => "", :price => 150.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_chrysler2)
service_item1 = ServiceItem.create(:name => "'57 (fits Dodge and DeSoto) Highway Hi-Fi mounting bracket set (universal style)", :core_name => "", :price => 65.00, :service_price_list => service_price_list_hifi4, :service_application => service_app_desoto2)