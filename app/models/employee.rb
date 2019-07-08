class Employee < ApplicationRecord
	belongs_to :user, dependent: :destroy
	validates :first_name, :second_name, presence: true
end
