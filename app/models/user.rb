class User < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :vans, inverse_of: 'owner' # ?????
  has_many :owner_rents, through: :vans, source: :rents

  has_many :rents, inverse_of: 'traveler'

  validates :first_name, :last_name, presence: true

  def owner?
    vans.count.positive?
  end

  def total_earned
    owner_rents.where(state: "accepted").sum(:total_price)
  end
end
