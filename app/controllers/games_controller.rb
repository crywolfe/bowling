class GamesController < ApplicationController

  def index
    @games = Games.all
  end


end
