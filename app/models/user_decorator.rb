Spree.user_class.class_eval do
  has_many :customer_cars, class_name: CustomerCar.name
  has_many :user_events
  has_many :events, :through => :user_events

  has_attached_file :profile_pic,
                  styles: {
                    thumb: {
                      geometry: '250x250>'
                    },
                    large: {
                      geometry: '1100x700>'
                    }
                  },
                  default_style: :thumb,
                  url: '/user/:id/:style/:basename.:extension',
                  convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :profile_pic,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }
end
