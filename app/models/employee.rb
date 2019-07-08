class Employee < ApplicationRecord
	validates :first_name, :second_name, presence: true
	belongs_to :user, dependent: :destroy
	has_many :appointments 
	has_many :clients, through: :appointments
end
