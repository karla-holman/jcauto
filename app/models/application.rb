class Application < ActiveRecord::Base
	belongs_to :model
	belongs_to :brand
	has_and_belongs_to_many :products, :join_table => "product_applications"

	validates :start_year, numericality: true
	validates :start_year, :inclusion => {:in => 1900..2020 }
	validates :end_year, numericality: true
	validates :end_year, :inclusion => {:in => 1900..2020 }

	validate :start_year_cannot_be_greater_than_end_year

	def start_year_cannot_be_greater_than_end_year
		if start_year > end_year
			errors.add(:start_year, "can't be greater than end year")
		end
	end
end
