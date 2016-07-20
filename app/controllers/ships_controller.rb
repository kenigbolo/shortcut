class ShipsController < ApplicationController

	def show
		user = ShipOwner.where("id = ?", params[:id])
		@user = user[0]
		@ports = Port.all

		render 'show'
	end

	def new
		gross_tonne = params[:gross_tonne].to_i
		dead_weight = params[:dead_weight].to_i
		imo_number = params[:imo_number].to_i
		ship_type = params[:ship_type]
		departure = params[:present_port]
		destination = params[:destination_port]
		departure_date = params[:departure_date]
		ship_owner_id = session[:current_user_id]

		if destination != departure
			if (gross_tonne <= 0) || (dead_weight <= 0)
				# Enter the appropraite weight/volume
				flash[:alert] = "That isn't an actuall ship. Enter the proper Gross Tonne and Dead Weight"
				render 'show'
			else
				if departure_date < Date.today.strftime("%F")
					# Cannot have the auction date the same as the current date
					flash[:alert] = "Departure date can only be today or a date in the future date"
					render 'show'
				else
					Ship.create(gross_tonne: gross_tonne, dead_weight: dead_weight, imo_number: imo_number, 
						ship_type: ship_type, present_port: departure, destination_port: destination, 
						depature_date: departure_date, ship_owner_id: ship_owner_id)
					flash[:alert] = "Ship has been succesfully added"

					redirect_to controller: :ship_owners, action: :profile, id: ship_owner_id
				end
			end
		else
			# destination and depature cannot be the same
			flash[:alert] = "Departure port and destination port cannot be the same"
			@ports = Port.all
			render 'show'
		end
	end
end
