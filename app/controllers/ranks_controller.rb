class RanksController < ApplicationController
  def index
    @rankings = Rank.order("created_at DESC")
    @categorys = Category.all
  end

  def new
    @ranking = RankCreate.new
  end

  def create
    @ranking = RankCreate.new(ranking_params)
    if @ranking.save(current_user.id)
      empty_data_destroy
      redirect_to action: :index
    else
      render action: :new
    end
  end

  def show
    @ranks = RankNumber.where(rank_id: params[:id])
    @ranking = Rank.find(params[:id])
  end

  # def edit　後回しにしている編集機能
  #   @ranking = Rank.new
  #   @ranks = RankNumber.new
  # end

  # def update
  #   @ranking = Rank.new(ranking_edit_params)
  #   @ranks = RankNumber.new(ranking_edit_other_params)
  #   if @ranking.update && @ranks.update
  #     redirect_to action: :index
  #   else
  #     render action: :edit
  #   end
  # end

  def destroy
    ranking = Rank.find(params[:id])
    ranks = RankNumber.where(rank_id: params[:id])
    if delete_ranks(ranks) && ranking.destroy
      redirect_to root_path
    else
      render :show
    end
  end


  private

  def ranking_params
    params.require(:rank_create).permit(:title, :text, :category_id, :rank_number_ids, rank_numbers: [:rank_number_id1, :rank_title1, :rank_text1, :rank_number_id2, :rank_title2, :rank_text2, :rank_number_id3, :rank_title3, :rank_text3, :rank_number_id4, :rank_title4, :rank_text4, :rank_number_id5, :rank_title5, :rank_text5, :rank_number_id6, :rank_title6, :rank_text6, :rank_number_id7, :rank_title7, :rank_text7, :rank_number_id8, :rank_title8, :rank_text8, :rank_number_id9, :rank_title9, :rank_text9, :rank_number_id10, :rank_title10, :rank_text10]).merge(user_id: current_user.id)
  end

  def delete_ranks(ranks)
    ranks.each do |rank|
      rank.destroy
    end
  end

  def empty_data_destroy
    rank_numbers = RankNumber.all
    rank_numbers.each do |rank_number|
      if rank_number.rank_title.blank? or rank_number.rank_text.blank?
        rank_number.destroy
      end
    end
    #rank_numbersテーブルの中の、rank_title,rank_textのどちらも埋まってなかった場合は削除するメソッドを書く
  end

end
