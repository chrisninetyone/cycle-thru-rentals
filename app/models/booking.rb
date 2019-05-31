class Booking < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  has_many :reviews

  validates :begin_date, presence: true
  validates :end_date, presence: true

  validate :end_date_after_begin_date
  def confirm!
    @confirm = true
  end

  private

  def end_date_after_begin_date
    return if end_date.blank? || begin_date.blank?

    if end_date < begin_date
      errors.add(:end_date, "must be after the start date")
    end

    if end_date < DateTime.now
      errors.add(:end_date, "cannot be in the past")
    end
  end
end
