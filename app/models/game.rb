class Game < ActiveRecord::Base
  attr_accessible :finished_at, :last_move_at, :started_at
  belongs_to :players, class: :User
  has_many :pieces
end
