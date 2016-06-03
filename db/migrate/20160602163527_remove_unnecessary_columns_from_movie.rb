class RemoveUnnecessaryColumnsFromMovie < ActiveRecord::Migration
  def change
    remove_column :movies, :gowatchitID, :format_id, :digital_format_id
  end
end
