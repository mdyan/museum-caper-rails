class GamesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @games = Game.all
  end

  def show				#retrieve game by id
    @game = Game.find(params[:id])
  end

  def new
    user_signed_in?
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    @game.started_at = Time.now
    if @game.save
      flash[:notice] = "Game '#{@game.name}' created!"
      redirect_to :action => 'index'
    else
      flash[:alert] = "Bad game name.  Not created."
    end
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(params[:game])
  end

  def destroy				#KABOOM
    Game.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
