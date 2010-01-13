class Album < Product
  validates_presence_of  :titel, :prijs, :artiest, :genre, :lengte, :coverart
  has_many :nummers
end
