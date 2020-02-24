class Memory < ApplicationRecord
  belongs_to :pin
  validates :date, presence: true
  validates :memory, presence:true 



end
