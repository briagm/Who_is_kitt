class Turn < ApplicationRecord
  belongs_to :player
  belongs_to :card
  belongs_to :characteristic
end
