class Rent < ApplicationRecord
  belongs_to :van
  belongs_to :traveler, class_name: 'User', foreign_key: 'user_id'

  validates :begin_date, :end_date, :state, presence: true
  validates :state, inclusion: { in: %w[pending accepted declined] }
end
