class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.blog_id = params[:blog_id]

    if @comment.save
      redirect_to @comment.blog
    else
      render 'show'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:title, :body, :blog_id, :user_id)
  end
end
