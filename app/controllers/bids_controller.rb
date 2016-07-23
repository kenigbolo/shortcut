class BidsController < ApplicationController

	def edit
		@cargo_id = params[:id]
	end

	def create
		cargo_id = params[:id]
		description = params[:description]
		end_date = params[:end_date]

		Bid.create(cargo_id: cargo_id, description: description, end_date: end_date)
		redirect_to controller: :marketplace, action: :show
	end


	def show
		@cargo_id = params[:id]
		@bid = Bid.find_by cargo_id: @cargo_id
	end


	def new
		bid = Bid.find_by id: params[:bid_id]
		
		bidder = ShipOwner.find_by id: session[:current_user_id]
		Bidder.create(name: bidder.username, category: session[:current_user_class], bid_id: params[:bid_id])

		if bid.price == nil
			bid.price = params[:price].to_i
			bid.winner = bidder.username
			bid.save
		else
			if params[:price].to_i < bid.price
				bid.price = params[:price].to_i
				bid.winner = bidder.username
				bid.save
			end
		end

		redirect_to '/marketplace'
	end

end
