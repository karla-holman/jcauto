class ServicePriceList < ActiveRecord::Base
	belongs_to :service
	has_many :service_items

	validates :name, presence: true
	validates_uniqueness_of :name, scope: [:service]

	accepts_nested_attributes_for :service_items
end
