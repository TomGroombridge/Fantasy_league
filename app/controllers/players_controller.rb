class PlayersController < ApplicationController

	def index
		@players = Player.all
	end

	def new
	end

	def create
		Player.create params[:player].permit(:name)
		redirect_to '/players'
	end
end
