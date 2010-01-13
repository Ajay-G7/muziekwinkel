class Commentaar < ActiveRecord::Base
  validates_presence_of :text, :rating
  validates_format_of :rating, :with => /\A([0-5]{1,1}+)\Z/i, :on => :create, :message => "is invalid. Use 0-5 only."
  belongs_to :product
  belongs_to :klant
end
