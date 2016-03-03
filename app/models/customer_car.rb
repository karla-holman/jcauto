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

    validate :model_must_belong_to_make

    validate :year_must_work_with_model

    private

    # Check if application years fit with model years
    def model_must_belong_to_make
      if self.make && self.model
        if self.model.make_id != self.make.id
          errors.add(:model, "must belong to selected make")
        end
      end
    end

    # Check if application years fit with model years
    def year_must_work_with_model
      if self.model && self.year
        model_start = self.model.start_year
        model_end = self.model.end_year
        if self.year < model_start || self.year > model_end
          errors.add(:start_year, "can't be outside of model construction dates")
        end
      end
    end
end
