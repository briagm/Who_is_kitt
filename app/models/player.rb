class Player < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :game
  has_many :turns
  has_many :cards, dependent: :destroy
  has_many :characteristic_questions, dependent: :destroy

  # validates :user, presence: true
  validates :game, presence: true

  after_create_commit :create_associated_cards

  def create_associated_cards
    Character.find_each do |character|
      Card.create(character:, player: self)
    end
  end
end
