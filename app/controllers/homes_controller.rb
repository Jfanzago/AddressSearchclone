class HomesController < ApplicationController

	def index
		@homes = Home.search(params[:search])
	
		# render "index"
	end

	def show
		@homes = Home.find_by(id: params[:id])
	end

end