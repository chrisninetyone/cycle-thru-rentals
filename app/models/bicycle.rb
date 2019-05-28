class Bicycle < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  validates :brand, presence: true
  validates :category, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
