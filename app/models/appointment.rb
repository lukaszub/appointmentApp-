class Appointment < ApplicationRecord
	belnogs_to :client
	belongs_to :employee
	belongs_to :user	
end
