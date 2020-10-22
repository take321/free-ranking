class RanksController < ApplicationController
  def index
    @rankings = Rank.order("created_at DESC")
    #@カテゴリーall
  end

  def new
    @ranking = RankCreate.new
  end

  def create
    @ranking = RankCreate.new(ranking_params)
    if @ranking.save(current_user.id)
      redirect_to action: :index
    else
      render action: :new
    end
  end


  private

  def ranking_params
    params.require(:rank_create).permit(:title, :text, :category_id, :rank_number_ids, rank_numbers: [:rank_number_id1, :rank_title1, :rank_text1, :rank_number_id2, :rank_title2, :rank_text2, :rank_number_id3, :rank_title3, :rank_text3, :rank_number_id4, :rank_title4, :rank_text4, :rank_number_id5, :rank_title5, :rank_text5, :rank_number_id6, :rank_title6, :rank_text6, :rank_number_id7, :rank_title7, :rank_text7, :rank_number_id8, :rank_title8, :rank_text8, :rank_number_id9, :rank_title9, :rank_text9, :rank_number_id10, :rank_title10, :rank_text10]).merge(user_id: current_user.id)
  end
end
