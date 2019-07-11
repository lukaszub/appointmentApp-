class Employee < ApplicationRecord
	validates 	:name, presence: true
	belongs_to 	:user, dependent: :destroy
	has_many 	:appointments, dependent: :destroy 
	has_many 	:clients, :through => :appointments
end
