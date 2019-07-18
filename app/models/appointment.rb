class Appointment < ApplicationRecord	
	belongs_to :client
	belongs_to :employee
	belongs_to :user	
	before_validation :time_into_date
	before_validation :add_end_appointment
	validate :check_time, on: :create

	private

		def time_into_date
			time = self.time.to_s.split(" ")
			date = self.date.to_s.split(" ")
			self.date = DateTime.parse(time[1] + " " + date[0])	
		end

		def add_end_appointment
			if self.slot == 1
				self.end_of_appointment = self.date + 3540
			elsif self.slot == 2
				self.end_of_appointment = self.date + 7140
			elsif self.slot == 3
				self.end_of_appointment = self.date+ 10740
			elsif self.slot == 4
				self.end_of_appointment = self.date + 14430
			elsif self.slot == 5
				self.end_of_appointment = self.date + 17940
			end				
		end

		def check_time
			appointments = Appointment.where(user_id: self.user_id).where(employee_id: self.employee_id).where(date: (self.date.beginning_of_day)..(self.date.end_of_day) )

			appointments.each do |x|
				if self.date.to_time.between?(x.date.to_time, x.end_of_appointment.to_time) 
					errors.add(:check_time, "Chosen appointment time is not available.")
					break
				elsif self.end_of_appointment.to_time.between?(x.date.to_time, x.end_of_appointment.to_time)
					errors.add(:check, "Chosen slot time is to long.")
					break
				elsif x.end_of_appointment.to_time.between?(self.date.to_time, self.end_of_appointment.to_time)
					errors.add(:check, "Chosen slot time is to long.")
					break
				end	
			end

		end

end
