class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
    @user = User.find(@blog.user_id)
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :genre, :user_id)
  end
end
