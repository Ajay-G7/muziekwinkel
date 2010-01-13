class Klant < ActiveRecord::Base
  validates_presence_of :voornaam, :achternaam, :email, :creditcard, :postcode, :huisnummer
  has_many :aankoops
  has_many :commentaars

  def naam
    voornaam + ' ' + achternaam
  end

  def naam_omgekeerd
    achternaam + ', ' + voornaam
  end
end
