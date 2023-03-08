class DashboardsController < ApplicationController

  def show
    @user = current_user
    @ranking = compute_users_ranking
  end

  private

  def compute_users_ranking
    User.order(score: :desc) # { user: user, score: 89} sorted by score: :desc
  end
end
