class Client < ApplicationRecord
	validates 	:name, :email, presence: true
	belongs_to 	:user
	has_many 	:appointments, dependent: :destroy
	has_many 	:employee, :through => :appointments
end
