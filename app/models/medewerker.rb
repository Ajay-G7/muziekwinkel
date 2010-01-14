class Medewerker < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :email, :password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_length_of :password, :within => 6..20, :too_long => "is too long. Use 6-20 characters", :too_short => "is too short. Use 6-20 characters"
end
