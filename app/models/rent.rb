class Rent < ApplicationRecord
  belongs_to :van
  belongs_to :user
end
