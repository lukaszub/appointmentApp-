class AddColumnEndOfAppointmentsToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :end_of_appointment, :time
  end
end
