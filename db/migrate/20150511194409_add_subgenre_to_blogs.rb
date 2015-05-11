class AddSubgenreToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :subgenre, :string
  end
end
