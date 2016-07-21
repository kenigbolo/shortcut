class MarketplaceController < ApplicationController

	def index

	end

	def new
		render 'register'
	end

	def show
		@cargos = Cargo.all
		@ships = Ship.all
	end
end
