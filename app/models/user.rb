class User < ActiveRecord::Base
  attr_accessible :email, :favorite_colour, :username
end
