class AddMovieIdColumnToDigitalFormats < ActiveRecord::Migration
  def change
    add_column :digital_formats, :movie_id, :integer
  end
end
