class AddUserToAppointment < ActiveRecord::Migration[5.2]
  def change
  	add_reference :appointments, :user
  end
end
