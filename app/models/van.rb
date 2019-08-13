class Van < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
  has_many :rents

  validates :title, :description, :price_per_day, :model, :brand, presence: true
  validates :description, length: { minimum: 15 }
end
