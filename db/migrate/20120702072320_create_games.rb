class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :last_move_at
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
