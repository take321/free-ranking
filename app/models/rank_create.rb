class RankCreate
  include ActiveModel::Model
  attr_accessor :title, :text, :category_id, :user_id, :rank_number_id, :rank_title, :rank_text, :rank_id

  def save(user_id,rank_id)
    Rank.create(title: title, text: text, category_id: category_id, user_id: user_id)
    RankNumber.create(rank_number_id: rank_number_id, rank_title: rank_title, rank_text: rank_text, rank_id: rank_id)
  end
end
