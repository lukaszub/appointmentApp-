class AddClientToAppointments < ActiveRecord::Migration[5.2]
  def change
  	add_reference :appointments, :client
  end
end
