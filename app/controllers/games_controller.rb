class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    @player = Player.where(game_id: @game)
    @card = Card.where(player_id: @player)
    @player_one = @game.players[0]
    @player_two = @game.players[1]
    @player_one_cards = @player_one.cards
    @player_two_cards = @player_two.cards
    @player_one_active_cards = @player_one_cards.select{ |card| card.active }
    @player_one_guess_card = @player_one_cards.where{ |card| card.guess }
    @player_two_active_cards = @player_two_cards.select{ |card| card.active }
    @player_two_guess_card = @player_two_cards.select{ |card| card.guess }
    @characteristics = Characteristic.all
  end
end
