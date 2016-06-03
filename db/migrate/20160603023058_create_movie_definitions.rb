class CreateMovieDefinitions < ActiveRecord::Migration
  def change
    create_table :movie_definitions do |t|
      t.integer :movie_id
      t.integer :definition_id

      t.timestamps null: false
    end
  end
end
