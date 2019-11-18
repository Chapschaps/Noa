class Booking < ApplicationRecord
  STATUS = ["requested", "validated", "canceled", "expired", "finished"]
  belongs_to :animal
  belongs_to :user

  validates :animal, presence: true
  validates :user, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }
  validates :ending_date, presence: true
  validates :starting_date, presence: true
end
