class Album < Product
  validates_presence_of  :titel, :prijs, :artiest, :genre, :lengte, :coverart
  validates_format_of :prijs, :with => /\A([0-9]+,)([0-9]{2,2})\Z/i, :on => :create
  validates_format_of :lengte, :with => /\A([0-9]{2,2}):([0-9]{2,2}):([0-9]{2,2})\Z/i, :on => :create

  has_many :nummers
end
