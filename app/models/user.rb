class User < ActiveRecord::Base
  attr_accessible :email, :favourite_colour, :username
  has_many :games
end
