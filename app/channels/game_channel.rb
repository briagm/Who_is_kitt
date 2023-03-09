class GameChannel < ApplicationCable::Channel
  def subscribed
    @game = Game.find(params[:id])
    p current_user
    link_invited_player unless @game.full?
    swith_game_to_active if @game.full? && @game.status == 'pending'
    stream_for @game
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  private

  def link_invited_player
    @player = Player.find_by(user: current_user, game: @game)

    @player = @game.invited_player.update(user: current_user) unless @player.present?
  end

  def swith_game_to_active
    @game.update(status: 'active')
    GameChannel.broadcast_to(
      @game
    )
  end



  # def find_or_create_game_player
  #   @player = Player.find_or_create_by(user: current_user, game: @game, score: 0)
  # end
end
