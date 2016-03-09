class StoryImage < ActiveRecord::Base
	belongs_to :story

	has_attached_file :attachment,
                      styles: { thumb: '165x120>',
                        large: {
                          geometry: '1100x700>'
                        }
                      },
                      default_style: :large,
                      url: '/cars/:id/:style/:basename.:extension',
                      convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    validates_attachment :attachment,
      :presence => true,
      :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }
end
