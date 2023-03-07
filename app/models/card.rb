class Card < ApplicationRecord
  belongs_to :character
  belongs_to :player

  validates :character, presence: true
  validates :player, presence: true
end
