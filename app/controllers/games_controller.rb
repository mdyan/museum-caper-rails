class GamesController < ApplicationController
  before_filter :authenticate_user!

  def index
    user_signed_in?
    @games = Game.all
  end
   def show				#retrieve game by id
      @game = Game.find(params[:id])
   end					#make a new game object
   def new
      @game = Game.new
   end					#make a new game object in the db from a game object.
					#trust the rails magic :X
   def create
      @game = Game.new(params[:game])
      @game.started_at = Time.now
      if @game.save			         
         redirect_to :action => 'index'
      else 
         redirect_to :action => 'create'
      end
   end					#re-persist a game object
   def update
      @game = Game.find(params[:id])
      @game.update_attributes(params[:game])
   end
   def destroy				#KABOOM
      Game.find(params[:id]).destroy
      redirect_to :action => 'index'
   end
end
