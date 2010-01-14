class Klant < ActiveRecord::Base
  validates_presence_of :voornaam, :achternaam, :email, :password, :creditcard, :postcode, :huisnummer
  validates_uniqueness_of :email, :creditcard
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of :creditcard, :with => /\A([0-9]+)\Z/i
  validates_format_of :huisnummer, :with => /\A([-a-z0-9]+)\Z/i
  validates_length_of :password, :within => 6..20, :too_long => "is too long. Use 6-20 characters", :too_short => "is too short. Use 6-20 characters"
  validates_length_of :postcode, :within => 6..6, :too_long => "is too long. Use 6 characters", :too_short => "is too short. Use 6 characters"
 
  has_many :aankoops
  has_many :commentaars

  def naam
    voornaam + ' ' + achternaam
  end

  def naam_omgekeerd
    achternaam + ', ' + voornaam
  end
end
