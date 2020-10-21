class RanksController < ApplicationController
  def index
    @rankings = Rank.order("created_at DESC")
    #@カテゴリーall
  end

  def new
    @ranking = Rank.new
  end

  def create
    @ranking = Rank.new(ranking_params)
    if @ranking.valid?
      render 'rank_numbers/new'
    else
      render :new
    end
  end


  private

  def ranking_params
    params.require(:rank).permit(:title, :text)
  end
end
