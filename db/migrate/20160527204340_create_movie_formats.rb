class CreateMovieFormats < ActiveRecord::Migration
  def change
    create_table :movie_formats do |t|
      t.integer :movie_id
      t.integer :format_id

      t.timestamps null: false
    end
  end
end
