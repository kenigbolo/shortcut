class MarketplaceController < ApplicationController

	def index

	end

	def new
		render 'register'
	end

	def show
		@cargos = Cargo.all
		@ships = Ship.all
		@filter = "Cargo"
	end

	def contact

	end

	def filter
		@cargos = Cargo.all
		@ships = Ship.all
		@filter = params[:filter]

		render 'show'
	end
end
