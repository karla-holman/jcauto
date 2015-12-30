class Service < ActiveRecord::Base
	has_many :service_images
	has_many :service_price_lists
end
