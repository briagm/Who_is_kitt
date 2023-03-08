class GamesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def show
    @game = Game.find(params[:id])
    # @player_one = @game.players[0]
    # @player_two = @game.players[1]
    # @player_one_cards = player_one.cards
    # @player_two_cards = player_two.cards
  end
end
