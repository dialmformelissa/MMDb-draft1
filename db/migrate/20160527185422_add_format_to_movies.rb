class AddFormatToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :format_id, :integer
  end
end
