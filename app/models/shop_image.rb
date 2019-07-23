class ShopImage < ActiveRecord::Base
    has_attached_file :attachment,
    processors: [:watermark],
    watermark_path: "#{Rails.root}/public/Watermark-images.png",
    styles: {
    thumb: {
    geometry: '350x250>'
    },
    large: {
    geometry: '1100x700>'
    }
    },
    default_style: :thumb,
    url: '/shop_image/:id/:style/:basename.:extension',
    convert_options: { all: '-strip -auto-orient -colorspace sRGB' }
    
    validates_attachment :attachment,
    :presence => true,
    :content_type => { :content_type => %w(image/jpeg image/jpg image/png image/gif) }
end
