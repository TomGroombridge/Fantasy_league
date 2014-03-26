class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.create params[:player].permit(:name, :DateOfBirth)
		redirect_to '/players'
	end

	def edit
		@player = Player.find params[:id]
	end

	def update
		@player = Player.find params[:id]
		@player.update params[:player].permit(:name, :DateOfBirth)
		redirect_to '/players'
	end
end
