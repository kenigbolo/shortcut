class ShipBidsController < ApplicationController
	def edit_ship
		@ship_id = params[:id]
		@ports = Port.all
	end

	def create_ship
		ship_id = params[:id]
		description = params[:description]
		price = params[:price].to_i
		end_date = params[:end_date]
		present_port = params[:present_port]
		destination_port = params[:destination_port]

		ship = Ship.find_by id: ship_id


		if present_port != destination_port
			ship.present_port = present_port
			ship.destination_port = destination_port
			ship.save
			
			ShipBid.create(ship_id: ship_id, available_space: description, departure_date: end_date)

			redirect_to controller: :marketplace, action: :show
		else
			# destination and depature cannot be the same
			flash[:alert] = "Departure port and destination port cannot be the same"
			@ports = Port.all
			render 'edit_ship'
		end

		
	end

	def show_ship
		@ship_id = params[:id]
		@bid = ShipBid.find_by ship_id: @ship_id
	end

	def new_ship
		bid = ShipBid.find_by id: params[:bid_id]
		
		bidder = CargoOwner.find_by id: session[:current_user_id]
		ShipBidder.create(name: bidder.username, category: session[:current_user_class], ship_bid_id: params[:bid_id])

		if params[:price].to_i < bid.price
			bid.price = params[:price].to_i
			bid.winner = bidder.username
			bid.save
		end
		

		redirect_to '/marketplace'
	end
end
