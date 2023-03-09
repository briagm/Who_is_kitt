class GamesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :show ]
  before_action :set_game, only: [:invite, :shifoumi, :select_character, :save_winner, :save_character, :show]

  def game
    @new_game = Game.new
  end

  def generate_game_link
    url_for(controller: 'games', action: 'shifoumi', id: @game.id, player_two: true)
    "localhost:3000/games/1/shifoumi?player_two=true"
  end

  def invite
    # inviter le player 2 à rejoindre la partie
    player2 = Player.find(params[:player2_id])
    player2.update(game: @game)
    redirect_to shifoumi_game_path(@game)
    # envoyer un lien à player 2 vers la page de shifoumi
    # le lien doit contenir l'id de la game
    # le lien doit contenir un paramètre player_two=true
  end

  def shifoumi
    if @game.players.count == 1 && @game.players.first.user != current_user && params[:player_two]
      Player.create(user: current_user, game: game, score: 0)
    end

    @players = @game.players
  end

  def save_winner
    # sauvegarder le gagnant du shifoumi dans la table player
    # le winner est le player qui a gagné le shifoumi
    # le winner est le current_player
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
      Player.create(game: game, score: 0)
      redirect_to dashboard_path
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
