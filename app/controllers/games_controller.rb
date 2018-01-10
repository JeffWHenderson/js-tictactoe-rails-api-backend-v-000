class GamesController < ApplicationController
  def index
    @games = Game.all
    render json: @games.to_json
  end

  def show
    @game = Game.find(params["id"])
    render json: @game.to_json
  end

  def create
    @game = Game.new
    render json: @game.to_json
  end

  def update
    @game = Game.find(params["id"])
    render json: @game.to_json
  end
end
