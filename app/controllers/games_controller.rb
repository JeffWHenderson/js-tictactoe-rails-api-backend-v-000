class GamesController < ApplicationController
  def index
    @games = Game.all
    render @games
  end

  def show
    @game = Game.find(params["id"])
    render @game
  end

  def create
    @game = Game.new
    render @game
  end

  def update
    @game = Game.find(params["id"])
    render @game
  end
end
