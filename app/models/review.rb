class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, presence: true, allow_blank: false, numericality: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, presence: true, allow_blank: false
end
