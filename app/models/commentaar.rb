class Commentaar < ActiveRecord::Base
  validates_presence_of :text, :rating
  validates_format_of :rating, :with => /\A([0-5]{1,1}+)\Z/i, :message => "is invalid. Only rate from 0 until 5"
  belongs_to :product
  belongs_to :klant
end
