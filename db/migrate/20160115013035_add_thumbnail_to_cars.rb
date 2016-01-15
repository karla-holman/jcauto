class AddThumbnailToCars < ActiveRecord::Migration
  def change
  	add_attachment :cars, :attachment
  end
end
