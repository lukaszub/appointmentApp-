class Appointment < ApplicationRecord
	belongs_to :client
	belongs_to :employee
	belongs_to :user	
	before_save :add_end_appointment
	validate :check_time

	private

		def add_end_appointment
			if self.slot == 1
				self.end_of_appointment = self.time + 3600
			elsif self.slot == 2
				self.end_of_appointment = self.time + 7200
			elsif self.slot == 3
				self.end_of_appointment = self.time + 10800
			elsif self.slot == 4
				self.end_of_appointment = self.time + 14400
			elsif self.slot == 5
				self.end_of_appointment = self.time + 18000
			end				
		end

		def check_time
			appointments = Appointment.where(user_id: self.user_id).where(employee_id: self.employee_id).where(date: self.date)
			appointments.each do |x|
				if self.time.between?(x.time, x.end_of_appointment)
					errors.add(:check_time, "Choose appointment time is not available.")
				end	
			end

		end

end
