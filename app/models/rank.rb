class Rank < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  has_many :rank_numbers
  belongs_to :user
end
