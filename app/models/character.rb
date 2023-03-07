class Character < ApplicationRecord
  has_many :cards
  has_many :features
end
