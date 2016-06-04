class AddMovieIdToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :movie_id, :integer
  end
end
