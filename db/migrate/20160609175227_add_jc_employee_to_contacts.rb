class AddJcEmployeeToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :jc_employee, :string
  end
end
