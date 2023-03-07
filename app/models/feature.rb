class Feature < ApplicationRecord
  belongs_to :character
  belongs_to :characteristic

  validates :character, presence: true
  validates :characteristic, presence: true
end
