class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  has_many :reviews

  def confirm!
    @confirm = true
  end
end
