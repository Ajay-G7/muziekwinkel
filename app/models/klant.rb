class Klant < ActiveRecord::Base
  validates_presence_of :voornaam, :achternaam, :email, :creditcard, :postcode, :huisnummer
  validates_uniqueness_of :email, :creditcard
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  has_many :aankoops
  has_many :commentaars

  def naam
    voornaam + ' ' + achternaam
  end

  def naam_omgekeerd
    achternaam + ', ' + voornaam
  end
end
