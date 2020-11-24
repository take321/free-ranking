class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @ranks = RankNumber.where(rank_id: params[:id])
    @rankings = Rank.where(user_id: params[:id])
  end
end
