class RemoveYetMoreUnnecessaryColumns < ActiveRecord::Migration
  def change
    remove_column :apps, :format_id
    remove_column :digital_formats, :format_id
    remove_column :formats, :digital_format_id
  end
end
