class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :employees, dependent: :destroy
  has_many :clients, dependent: :destroy
  has_many :appointments, dependent: :destroy
end
