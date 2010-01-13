class Aankoop < ActiveRecord::Base
  validates_presence_of :prijs
  validates_format_of :prijs, :with => /\A([0-9]+,)([0-9]{2,2})\Z/i, :on => :create
  
  belongs_to :product
  belongs_to :klant
end
