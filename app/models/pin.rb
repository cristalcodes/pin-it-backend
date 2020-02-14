class Pin < ActiveRecord::Base
  has_many :memories
  geocoded_by :address
  after_validation :geocode



end
