class AddColumnToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :favorite, :boolean
  end
end
