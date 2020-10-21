class RanksController < ApplicationController
  def index
    @rankings = Rank.order("created_at DESC")
    #@カテゴリーall
  end

  def new
    @ranking = Rank.new
  end

  def create
  end


  private

  def ranking_params
    params.require(:rank).permit(:title, :text)
  end
end
