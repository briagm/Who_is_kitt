class Card < ApplicationRecord
  belongs_to :character
  belongs_to :player
end
