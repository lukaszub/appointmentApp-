class AddDateTimeObjectColumnToAppointments < ActiveRecord::Migration[5.2]
  def change
  add_column :appointments, :end_of_appointment, :datetime
  end
end
