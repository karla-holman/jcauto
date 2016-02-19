class AddCompletionDateToProject < ActiveRecord::Migration
  def change
  	add_column :cars, :completed_date, :date
  end
end
