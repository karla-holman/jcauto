class RemovePastEvent < ActiveRecord::Migration
	def change
		remove_column :events, :past_event
	end
end
