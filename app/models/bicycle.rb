class Bicycle < ApplicationRecord
  mount_uploader :photo, PhotoUploader


  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :brand, presence: true
  validates :category, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
