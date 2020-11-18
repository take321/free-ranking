class CategoryController < ApplicationController
  def index
    @rankings = Rank.where(category_id: params[:rank_id])
    @categorys = Category.all
  end
end
