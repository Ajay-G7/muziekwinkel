class Klant < ActiveRecord::Base
  validates_presence_of :voornaam, :achternaam, :email, :password, :creditcard, :postcode, :huisnummer
  validates_uniqueness_of :email, :creditcard
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_format_of :huisnummer, :with => /\A([0-9]+)\Z/i, :on => :create
  validates_length_of :password, :within => 6..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  validates_length_of :postcode, :within => 6..6, :too_long => "pick a shorter postal code", :too_short => "pick a longer postal code"
 
  has_many :aankoops
  has_many :commentaars

  def naam
    voornaam + ' ' + achternaam
  end

  def naam_omgekeerd
    achternaam + ', ' + voornaam
  end
end
