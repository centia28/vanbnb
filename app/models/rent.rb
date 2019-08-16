class Rent < ApplicationRecord
  belongs_to :van
  belongs_to :traveler, class_name: 'User', foreign_key: 'user_id'

  validates :begin_date, :end_date, :state, presence: true
  validates :state, inclusion: { in: %w[pending accepted declined] }
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if end_date.blank? || begin_date.blank?

    if end_date < begin_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
