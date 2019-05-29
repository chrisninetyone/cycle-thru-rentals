class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true, allow_blank: false, numericality: true
  validates :content, presence: true, allow_blank: false
end
