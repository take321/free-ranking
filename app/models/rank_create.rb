class RankCreate
  include ActiveModel::Model
  attr_accessor :title, :text, :category_id, :user_id, :rank_id, :rank_number_ids, :rank_numbers, :rank_number_id1, :rank_title1, :rank_text1, :rank_number_id2, :rank_title2, :rank_text2, :rank_number_id3, :rank_title3, :rank_text3, :rank_number_id4, :rank_title4, :rank_text4, :rank_number_id5, :rank_title5, :rank_text5, :rank_number_id6, :rank_title6, :rank_text6, :rank_number_id7, :rank_title7, :rank_text7,:rank_number_id8, :rank_title8, :rank_text8,:rank_number_id9, :rank_title9, :rank_text9,:rank_number_id10, :rank_title10, :rank_text10

  def save(user_id)
    Rank.create(title: title, text: text, category_id: category_id, user_id: user_id)
    rank_id = Rank.last.id
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id1], rank_title: rank_numbers[:rank_title1], rank_text: rank_numbers[:rank_text1], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id2], rank_title: rank_numbers[:rank_title2], rank_text: rank_numbers[:rank_text2], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id3], rank_title: rank_numbers[:rank_title3], rank_text: rank_numbers[:rank_text3], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id4], rank_title: rank_numbers[:rank_title4], rank_text: rank_numbers[:rank_text4], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id5], rank_title: rank_numbers[:rank_title5], rank_text: rank_numbers[:rank_text5], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id6], rank_title: rank_numbers[:rank_title6], rank_text: rank_numbers[:rank_text6], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id7], rank_title: rank_numbers[:rank_title7], rank_text: rank_numbers[:rank_text7], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id8], rank_title: rank_numbers[:rank_title8], rank_text: rank_numbers[:rank_text8], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id9], rank_title: rank_numbers[:rank_title9], rank_text: rank_numbers[:rank_text9], rank_id: rank_id)
    RankNumber.create(rank_number_id: rank_numbers[:rank_number_id10], rank_title: rank_numbers[:rank_title10], rank_text: rank_numbers[:rank_text10], rank_id: rank_id)
  end
end
