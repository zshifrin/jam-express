class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
	end

	def create
		@concerts = Concert.new(concert_params)
	end

	def new
		@concert = Concert.new
	end

	def edit
		@concert = Concert.find(params[:id])
	end

	def show
		@concert = Concert.find(params[:id])
	end

	def update
		@concert = Concert.find(params[:id])
	end

end