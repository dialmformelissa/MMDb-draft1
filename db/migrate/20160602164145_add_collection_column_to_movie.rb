class AddCollectionColumnToMovie < ActiveRecord::Migration
  def change
    add_column :movies, :collection, :string
  end
end
