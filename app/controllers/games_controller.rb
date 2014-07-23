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

    @game = Game.new
    @game[:user_id] = @user.id

    populate_scorecard

    if @game.save
      redirect_to games_path
    else
      render :new
    end

  end

  private

  def populate_scorecard
    @game.scorecard = []
    10.times do |num|
      @game.scorecard << [params["frame_#{num+1}a"].to_i, params["frame_#{num+1}b"].to_i]
    end
  end




end
