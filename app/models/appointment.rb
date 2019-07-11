class Appointment < ApplicationRecord
	belongs_to :client
	belongs_to :employee
	belongs_to :user	
	before_save :add_end_appointment

	private

		def add_end_appointemnt
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

end
