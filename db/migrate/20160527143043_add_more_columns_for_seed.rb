class AddMoreColumnsForSeed < ActiveRecord::Migration
  def change
    add_column :movies, :title_type, :string
    add_column :movies, :director, :string
    add_column :movies, :release_date, :date
  end
end
