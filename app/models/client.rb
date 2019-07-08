class Client < ApplicationRecord
	validates :first_name, :second_name, :email, presence: true
	belongs_to :user
	has_many :appointments
	has_many :employee, through: :appointments
end
