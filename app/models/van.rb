class Van < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :picture, PhotoUploader

  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :rents

  validates :title, :description, :price_per_day, :model, :brand, presence: true
  validates :description, length: { minimum: 10 }

  def available?(date_range = {})
    # GUARD CLAUSE: compare on the today date if there is no range given
    # Return true if there's no rent in this range of date, false if there's
    return true if rents.count.zero?

    if date_range
      start_date = date_range[:begin_date]
      end_date = date_range[:end_date]
    else
      start_date = Date.today
      end_date = Date.today
    end

    rents.all? { |rent| rent.end_date < start_date && rent.begin_date > end_date }
  end
end
