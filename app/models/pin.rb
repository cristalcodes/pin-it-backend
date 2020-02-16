class Pin < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true
  validates :latitude, presence: true
  validates :longitude, presence: true
  has_many :memories, dependent: :destroy
  geocoded_by :address
  before_validation :geocode



end
