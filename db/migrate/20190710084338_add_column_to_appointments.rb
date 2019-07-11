class AddColumnToAppointments < ActiveRecord::Migration[5.2]
  def change
  	add_column :appointments, :slot, :integer
  end
end
