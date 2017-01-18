class BandsController < ApplicationController

	def index
		@bands = Band.all
	end

	def create
		@band = Band.new(band_params)
	end

	def new
		@band = Band.new
	end

	def edit
		@band = Band.find(params[:id])
	end

	def show
		@band = Band.find(params[:id])
	end

	def update
		@band = Band.find(params[:id])
	end

end