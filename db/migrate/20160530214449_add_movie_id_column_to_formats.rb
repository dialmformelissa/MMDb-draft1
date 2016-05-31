class AddMovieIdColumnToFormats < ActiveRecord::Migration
  def change
    add_column :formats, :movie_id, :integer
  end
end
