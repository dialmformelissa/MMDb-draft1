class CreateMoviePlayers < ActiveRecord::Migration
  def change
    create_table :movie_players do |t|
      t.integer :movie_id
      t.integer :player_id

      t.timestamps null: false
    end
  end
end
