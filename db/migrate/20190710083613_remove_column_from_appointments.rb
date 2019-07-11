class RemoveColumnFromAppointments < ActiveRecord::Migration[5.2]
  def change
  	remove_column :appointments, :end_of_appointment	
  end
end
