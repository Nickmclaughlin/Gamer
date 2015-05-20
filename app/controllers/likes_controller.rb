class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user_id = current_user.id
    @like.team_id = params[:team_id]
    @like.favorite = "true"

    if @like.save
      redirect_to teams_path
    else
      render 'teams/index'
    end
  end

  def destroy
    def destroy
      @Like = Like.find(params[:id])
      @Like.destroy

      flash[:success] = "You successfully removed Team from favorites"

      redirect_to teams_path
    end
  end

  private
  def like_params
    params.require(:like).permit(:favorite, :team_id, :user_id)
  end

end
