class RankingController < ApplicationController
  def index
    @ranking = Rank.order("created_at DESC")
    #@カテゴリーall
  end
end
