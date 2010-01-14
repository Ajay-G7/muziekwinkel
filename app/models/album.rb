class Album < Product
  validates_format_of :lengte, :with => /\A([0-9]{2,2}):([0-9]{2,2}):([0-9]{2,2})\Z/i

  has_many :nummers
end
