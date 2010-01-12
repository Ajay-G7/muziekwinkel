class Commentaar < ActiveRecord::Base
  belongs_to :product
  belongs_to :klant
end
