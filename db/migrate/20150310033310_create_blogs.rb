class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :body
      t.integer :user_id
      t.string :genre

      t.timestamps
    end
  end
end
