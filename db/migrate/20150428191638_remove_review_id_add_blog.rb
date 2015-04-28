class RemoveReviewIdAddBlog < ActiveRecord::Migration
  def up
    add_column :comments, :blog_id, :integer
    remove_column :comments, :review_id
  end

  def down
    remove_column :comments, :blog_id
    add_column :coments, :review_id, :integer
  end
end
