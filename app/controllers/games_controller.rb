class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]
  
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

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
