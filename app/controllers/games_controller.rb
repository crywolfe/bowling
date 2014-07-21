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
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path
    else
      render :new
    end

  end

  private

  def game_params
    params[:game][:user_id] = @user.id
    params.require(:game).permit(
    :frame_1a, :frame_1b,
    :frame_2a, :frame_2b,
    :frame_3a, :frame_3b,
    :frame_4a, :frame_4b,
    :frame_5a, :frame_5b,
    :frame_6a, :frame_6b,
    :frame_7a, :frame_7b,
    :frame_8a, :frame_8b,
    :frame_9a, :frame_9b,
    :frame_10a, :frame_10b,
    :comment, :user_id)

  end



end
