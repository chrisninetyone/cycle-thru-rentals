class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user

  def confirm!
    @confirm = true
  end
end
