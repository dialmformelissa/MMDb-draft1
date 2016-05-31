class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :format_id

      t.timestamps null: false
    end
  end
end
