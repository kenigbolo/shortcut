class CargosController < ApplicationController

	def show

		user = CargoOwner.where("id = ?", params[:id])
		@user = user[0]

		render 'show'
	end

	def new

		weight = params[:weight].to_i
		volume = params[:volume].to_i
		density = volume * weight
		cargo_type = params[:cargo_type]
		departure = params[:present_port]
		destination = params[:destination_port]
		arrival_date = params[:arrival_date]
		status = params[:status]
		description = params[:description]
		cargo_owner_id = session[:current_user_id]

		if destination != departure
			if (weight <= 0) || (volume <= 0)
				# Enter the appropraite weight/volume
				flash[:alert] = "Weight and/or Volume cannot be empty"
				render 'show'
			else
				if arrival_date <= Date.today.strftime("%F")
					# Cannot have the auction date the same as the current date
					flash[:alert] = "Arrival date cannot be today or a previous date"
					render 'show'
				else
					Cargo.create(weight: weight, volume: volume, density: density, cargo_type: cargo_type,
					 present_port: departure, destination_port: destination, arrival_date: arrival_date, 
					 status: status, description: description, cargo_owner_id: session[:current_user_id])
					flash[:alert] = "Cargo has been succesfully added"

					redirect_to controller: :cargo_owners, action: :profile, id: cargo_owner_id
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
