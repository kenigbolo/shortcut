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
			byebug
			redirect_to controller: :marketplace, action: :show
		else
			Bid.create(cargo_id: cargo_id, description: description, price: 0, end_date: end_date)
		end
	end

	def show
		@cargo_id = params[:id]
		@bid = Bid.find_by cargo_id: @cargo_id
	end
end
