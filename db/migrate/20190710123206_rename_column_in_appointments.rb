class RenameColumnInAppointments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :appointments, :start_of_appointment, :time
  end
end
