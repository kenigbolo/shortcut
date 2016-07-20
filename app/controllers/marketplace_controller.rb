class MarketplaceController < ApplicationController

	def index

	end

	def new
		render 'register'
	end

	def show
		@cargo = Cargo.all

	end
end
