class AddAttachmentsToEvents < ActiveRecord::Migration
  def change
  	add_attachment :events, :attachment
   	# remove_column :events, :thumb
   	remove_column :event_images, :image_path
  end
end
