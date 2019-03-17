class PlayersController < ApplicationController
    def index
      @players = Player.all
    end
  
    def show
      @players = Player.find(params[:id])
    end
  
    def new
      @player = Player.new
    end
  
    def edit
      @player = Player.find(params[:id])
    end
  
    def create
      @player = Player.new(player_params)
  
      if @player.save
        redirect_to action: :index
      else
        render :new
      end
    end
  
    def update
      @player = Player.find(params[:id])
  
      if @player.update(player_params)
        redirect_to action: :index
      else
        render :edit
      end
    end
  
    def destroy
      @player = Player.find(params[:id])
      @player.destroy
  
      redirect_to action: :index
    end
  
    private
  
    def player_params
      params.require(:player).permit(:name, :number, :position, :club, :team_id)
    end
  end
  