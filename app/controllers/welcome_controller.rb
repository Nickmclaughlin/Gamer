class WelcomeController < ApplicationController
  def index
    @user = current_user
    @blog = Blog.new
    @blogs = Blog.all
  end
end
