class Animal < ApplicationRecord
  SIZE = %w(XS S M L XL)
  SEXE = %w(Female Male Unknown)
  RISK_FACTOR = %w(X XX XXX XXXX XXXXX)
  belongs_to :user
  has_many :bookings
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, presence: true
  validates :age, presence: true
  validates :size, presence: true, inclusion: { in: SIZE }
  validates :specie, presence: true
  validates :location, presence: true
  validates :sexe, presence: true, inclusion: { in: SEXE }
  validates :risk_factor, presence: true, inclusion: { in: RISK_FACTOR }
  validates :user, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_location,
    against: [:location],
    using: {
      tsearch: { prefix: true }
    }
end
