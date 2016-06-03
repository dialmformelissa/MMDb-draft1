class CreateMovieApps < ActiveRecord::Migration
  def change
    create_table :movie_apps do |t|
      t.integer :movie_id
      t.integer :app_id

      t.timestamps null: false
    end
  end
end
