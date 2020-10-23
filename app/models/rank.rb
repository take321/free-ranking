class Rank < ApplicationRecord
  has_many :rank_numbers
  belongs_to :user
end
