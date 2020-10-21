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
        @ranking.save
        # rank_id保存処理
        redirect_to action: :index
      else
        render action: :new
      end
  end


  private

  def ranking_params
    params.require(:rank).permit(:title, :text, :category_id, :rank_number_id, :rank_title, :rank_text).merge(user_id: current_user.id)
  end
end
