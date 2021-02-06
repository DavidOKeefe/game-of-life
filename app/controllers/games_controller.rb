class GamesController < ApplicationController
  def index
    @games = Game.where(user: current_user)
  end
end
