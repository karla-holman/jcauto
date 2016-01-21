Spree::Wombat::Config.configure do |config|
  config.connection_token = ENV['X_HUB_STORE']
  config.connection_id = ENV['X_HUB_ACCESS_TOKEN']

  config.push_objects = ["Spree::Order", "Spree::Product", "Spree::Shipment"]

  config.payload_builder = {
	  "Spree::Order"  => {:serializer => "Spree::Wombat::OrderSerializer", :root => "orders"},
	  "Spree::Product" => {:serializer => "Spree::Wombat::ProductSerializer", :root => "products"},
	  "Spree::Shipment" => {:serializer => "Spree::Wombat::ShipmentSerializer", :root => "shipments"}
	}

end