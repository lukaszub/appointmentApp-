class AddColumnDescriptionToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :description, :text
  end
end
