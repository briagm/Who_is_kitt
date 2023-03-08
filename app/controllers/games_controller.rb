class GamesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :show ]
  before_action :set_game, only: [:invite, :shifoumi, :select_character, :save_winner, :save_character, :show]

  def invite
    "localhost:3000/games/1/shifoumi?player_two=true"
  end

  def shifoumi
    if @game.players.count == 1 && @game.players.first.user != current_user && params[:player_two]
      Player.create(user: current_user, game: game, score: 0)
    end

    @players = @game.players
  end

  def save_winner
    # ...

    redirect_to select_character_game_path(@game)
  end

  def select_character
  end

  def save_character
    # ...

    redirect_to game_path(@game)
  end

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

  def create
    game = Game.new(status: 'pending')

    if game.save
      Player.create(user: current_user, game: game, score: 0)
      redirect_to shifoumi_game_path
    end
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end


# create card_controller

def create
  @character = Character.find(params[:character_id])
  @player = current_user.player
  redirect_to game_path @player.game
end