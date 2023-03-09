class DashboardsController < ApplicationController

  def show
    @user = current_user
    @ranking = compute_users_ranking
    @games = @user.games
    @new_game = Game.new
    @pending_game = @games.where(status: 'pending').first

  end

  private

  def compute_users_ranking
    User.order(score: :desc) # { user: user, score: 89} sorted by score: :desc
  end
end
