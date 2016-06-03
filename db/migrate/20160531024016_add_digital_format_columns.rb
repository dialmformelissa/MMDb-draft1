class AddDigitalFormatColumns < ActiveRecord::Migration
  def change
    add_column :movies, :digital_format_id, :integer
    add_column :formats, :digital_format_id, :integer
  end
end
