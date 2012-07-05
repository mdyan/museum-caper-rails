class Game < ActiveRecord::Base
  validates :name, presence: true

  attr_accessible :finished_at, :last_move_at, :started_at, :name, :board_configuration
  has_and_belongs_to_many :users
  has_many :pieces

end
