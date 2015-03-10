class WelcomeController < ApplicationController
  def index
    @user = current_user
    @blog = Blog.new
  end
end
