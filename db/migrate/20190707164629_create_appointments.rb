class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :start_of_appointment
      t.time :end_of_appointment

      t.timestamps
    end
  end
end
