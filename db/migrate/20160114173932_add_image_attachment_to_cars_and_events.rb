class AddImageAttachmentToCarsAndEvents < ActiveRecord::Migration
  def change
  	add_attachment :car_images, :attachment
  	add_attachment :event_images, :attachment
  end
end
