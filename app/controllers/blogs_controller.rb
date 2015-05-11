class BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
    @user = User.find(@blog.user_id)
    @comment = Comment.new
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

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      flash[:success] = "You have successfully updated your blog."
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy

    flash[:success] = "You deleted your blog!"

    redirect_to user_path(@blog.user_id)
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #
  #   flash[:success] = "You have successfully deleted your review."
  #
  #   redirect_to neighborhood_path(@review.neighborhood)
  # end

  private
  def blog_params
    params.require(:blog).permit(:title, :body, :genre, :user_id, :photo, :subgenre)
  end
end
