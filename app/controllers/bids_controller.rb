class BidsController < ApplicationController

	def edit
		@cargo_id = params[:id]
	end

	def create
		cargo_id = params[:id]
		description = params[:description]
		price = params[:price].to_i
		end_date = params[:end_date]

		if price != nil
			Bid.create(cargo_id: cargo_id, description: description, price: price, end_date: end_date)
			redirect_to controller: :marketplace, action: :show
		else
			Bid.create(cargo_id: cargo_id, description: description, price: 0, end_date: end_date)
			redirect_to controller: :marketplace, action: :show
		end
	end

	def show
		@cargo_id = params[:id]
		@bid = Bid.find_by cargo_id: @cargo_id
	end

	def new
		bid = Bid.find_by id: params[:bid_id]
		#Change to ship owner later on instead of cargo owner
		winner = ShipOwner.find_by id: session[:current_user_id]
		Bidder.create(name: winner.username, category: session[:current_user_class], bid_id: params[:bid_id])

		if params[:price] < bid.price
			bid.price = params[:price].to_i
			bid.winner = winner.username
			bid.save
		else
			flash[:alert] = "You cannot bid "
		end
		

		redirect_to '/marketplace'
	end

end
