class AddColumnToDigitalFormat < ActiveRecord::Migration
  def change
    add_column :digital_formats, :format_id, :integer
  end
end
