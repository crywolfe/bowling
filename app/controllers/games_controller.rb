class GamesController < ApplicationController

  def index
    @user = current_user
    @games = Game.all
  end

  def new
    @user = current_user
    @game = Game.new
  end

  def create
    @user = current_user
    binding.pry
    @game = Game.new(game_params)

    if @game.save
      render :index
    else
      render :new
    end

  end

  private

  def game_params
    params.require(:game).permit(:id, :username, :email, :password, :password_confirmation)

  end



end
