class Klant < ActiveRecord::Base
  has_many :aankoops
  has_many :commentaars

  def naam
    voornaam + ' ' + achternaam
  end

  def naam_omgekeerd
    achternaam + ', ' + voornaam
  end
end
