class AddExcelModel < ActiveRecord::Migration
  def change
    create_table :spree_excels do |t|
      t.string     :name
      t.string     :parse_errors
      t.attachment :spreadsheet
    end
  end
end
