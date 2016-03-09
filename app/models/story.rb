class Story < ActiveRecord::Base
	has_many :story_images
	belongs_to :make, class_name: "Spree::Make"
	belongs_to :model, class_name: "Spree::Model"

	has_attached_file :attachment,
                      styles: {
                        thumb: {
                          geometry: '350x250>'
                        }
                      },
                      default_style: :thumb,
                      url: '/stories/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :attachment,
      :presence => true,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }

    # Get image path or string if nil
    def thumb_image_path 
      begin
        self.attachment.url(:thumb) ? self.attachment.url(:thumb) : "/public/no-image.png"
      rescue
        "/public/no-image.png"
      end
    end
end
