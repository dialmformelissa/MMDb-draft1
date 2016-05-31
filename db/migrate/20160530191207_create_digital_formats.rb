class CreateDigitalFormats < ActiveRecord::Migration
  def change
    create_table :digital_formats do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
