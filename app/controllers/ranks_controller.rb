class RanksController < ApplicationController
  def index
    @rankings = Rank.order("created_at DESC")
    #@カテゴリーall
  end

  def new
    @ranking = Rank.new
  end
end
