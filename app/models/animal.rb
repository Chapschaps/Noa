class Animal < ApplicationRecord
  SIZE = %w(XS S M L XL)
  SEXE = %w(Female Male Unknown)
  RISK_FACTOR = %w(X XX XXX XXXX XXXXX)
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :age, presence: true
  validates :size, presence: true, inclusion: { in: SIZE }
  validated :specie, presence: true
  validates :location, presence: true
  validates :sexe, presence: true, inclusion: { in: SEXE }
  validates :risk_factor, presence: true, inclusion: { in: RISK_FACTOR }
  validates :user, presence: true
  validates :description, presence: true
end
