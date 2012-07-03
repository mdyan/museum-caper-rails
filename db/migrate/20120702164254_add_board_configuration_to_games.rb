class AddBoardConfigurationToGames < ActiveRecord::Migration
  def change
    add_column :games, :board_configuration, :string
  end
end
