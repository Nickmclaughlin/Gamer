class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @blogs = @user.blogs
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:success] = "You have successfully updated your profile."
      redirect_to user_path(@user)
    else
      flash[:alert] = "Please fill out empty fields."
      render 'show'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :first_name, :last_name)
  end
end
