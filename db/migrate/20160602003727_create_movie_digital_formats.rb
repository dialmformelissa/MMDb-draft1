class CreateMovieDigitalFormats < ActiveRecord::Migration
  def change
    create_table :movie_digital_formats do |t|
      t.integer :movie_id
      t.integer :digital_format_id

      t.timestamps null: false
    end
  end
end
