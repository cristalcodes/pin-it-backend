class Pin < ActiveRecord::Base
  validates :address, presence: true, uniqueness: true
  has_many :memories, dependent: :destroy
  geocoded_by :address
  after_validation :geocode



end
