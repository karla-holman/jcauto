class ServiceItem < ActiveRecord::Base
	belongs_to :service_price_list
	belongs_to :service_application

	validates :price, numericality: true
	validates_uniqueness_of :name, scope: [:service_application_id], unless: Proc.new { |b| b.service_application_id.blank? }

	def my_price
    return Spree::Money.new(self.price, currency: (Spree::Config[:currency])).to_s
  end

  def my_core_price
  	if self.core_price
    	return Spree::Money.new(self.core_price, currency: (Spree::Config[:currency])).to_s
    else 
    	return Spree::Money.new(0, currency: (Spree::Config[:currency])).to_s
    end
  end

end
