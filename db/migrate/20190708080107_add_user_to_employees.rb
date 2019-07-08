class AddUserToEmployees < ActiveRecord::Migration[5.2]
  def change
  	add_reference :employees, :user
  end
end
