class Product < ActiveRecord::Base
  validates_presence_of  :titel, :prijs, :artiest, :lengte, :coverart, :type
  validates_format_of :prijs, :with => /\A([0-9]+,)([0-9]{2,2})\Z/i

  has_many :commentaar
end

