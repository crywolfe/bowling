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
    binding.pry
    if @game.save
      redirect_to games_path
    else
      render :new
    end

  end

  private

  def populate_scorecard
    @game.scorecard = []
    9.times do |num|
      @game.scorecard << [params["frame_#{num+1}a"].to_i, params["frame_#{num+1}b"].to_i, 0]
    end
    @game.scorecard << [params[:frame_10a].to_i, params[:frame_10b].to_i, params[:frame_10c].to_i]

  end




end
