class Pin < ActiveRecord::Base
  validates :address, uniqueness: true

  def address
    [street, city, state, zip].compact.join(", ")
  end

end
