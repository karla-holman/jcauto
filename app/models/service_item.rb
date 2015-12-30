class ServiceItem < ActiveRecord::Base
	belongs_to :service_price_list
	belongs_to :service_application

	validates :price, numericality: true
	validates_uniqueness_of :name, scope: [:service_application_id], unless: Proc.new { |b| b.service_application_id.blank? }

	def my_price
      return Spree::Money.new(self.price, currency: (Spree::Config[:currency])).to_s
    end

end
