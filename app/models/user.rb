class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :animals, dependent: :destroy
  has_many :bookings
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :adress, presence: true
end