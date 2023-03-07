class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :turns
  has_many :cards

  validates :user, presence: true
  validates :game, presence: true
end
