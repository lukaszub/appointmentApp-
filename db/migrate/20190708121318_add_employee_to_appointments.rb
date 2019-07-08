class AddEmployeeToAppointments < ActiveRecord::Migration[5.2]
  def change
  	add_reference :appointments, :employee
  end
end
