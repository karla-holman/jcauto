class CustomerCar < ActiveRecord::Base
	belongs_to :user, class_name: "Spree::User" 
	belongs_to :make, class_name: "Spree::Make"
	belongs_to :model, class_name: "Spree::Model"

	has_attached_file :attachment,
                      styles: { thumb: '165x120>',
                        large: {
                          geometry: '1100x700>'
                        }
                      },
                      default_style: :large,
                      url: '/customers/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :attachment,
        :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

    validates :name, :presence => :true
    validates :year, :numericality => :true, :presence => :true
end
