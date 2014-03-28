class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def new
		authenticate_user!
		@player = Player.new
	end

	def create
		@player = Player.create params[:player].permit(:name, :DateOfBirth, :shooting, :defending, :discipline, :team, :experiance, :image_url)
		redirect_to '/players'
	end

	def edit
		authenticate_user!
		@player = Player.find params[:id]
	end

	def update
		authenticate_user!
		@player = Player.find params[:id]
		@player.update params[:player].permit(:name, :DateOfBirth, :shooting, :defending, :discipline, :team, :experiance, :image_url)
		redirect_to '/players'
	end

	def destroy
		authenticate_user!
		@player = Player.find params[:id]
		@player.delete
		redirect_to '/players'
	end
	
end
