class RemoveMoreUnnecessaryColumnsFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :format_id
    remove_column :movies, :digital_format_id
  end
end
