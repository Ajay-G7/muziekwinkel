class Medewerker < ActiveRecord::Base
  validates_presence_of :email, :password
end
