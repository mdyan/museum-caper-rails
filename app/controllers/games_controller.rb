class GamesController < ApplicationController
  before_filter :authenticate_user!

  def index
    user_signed_in?
    @games = Game.all
  end
   def show				#view all games
      @games = Game.find(:all)
   end
   def get				#retrieve game by id
      @game = Game.find(params[:id])
   end					#make a new game object
   def new
      @game = Game.new
   end					#make a new game object in the db from a game object.
					#trust the rails magic :X
   def create
      @game = Game.new(params[:game])
      @game.save			#trusting that rails magic to do it right...
      redirect_to :action => 'show'
   end					#re-persist a game object
   def update
      @game = Game.find(params[:id])
      @game.update_attributes(params[:game])
   end
   def destroy				#KABOOM
      Game.find(params[:id]).destroy
      redirect_to :action => 'show'
   end
end
