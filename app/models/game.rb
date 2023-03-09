class Game < ApplicationRecord
  has_many :players, dependent: :destroy
  has_many :users, through: :players
  has_many :characteristic_questions, dependent: :destroy

  # after_commit :broadcast_data

  def full?
    players.where.not(user: nil).count == 2
  end

  def invited_player
    players.where(user: nil).first
  end

  private

  def broadcast_data
    show_data = GamesController.renderer.render(partial: 'games/game', locals: { game: self })
    game_data = { game: self, show_data: show_data }
    ActionCable.server.broadcast("GameChannel", game_data)
  end
end
