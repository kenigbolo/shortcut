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
		ship_owner_id = session[:current_user_id]

		if (gross_tonne <= 0) || (dead_weight <= 0)
			# Enter the appropraite weight/volume
			flash[:alert] = "That isn't an actual ship. Enter the proper Gross Tonne and Dead Weight"
			render 'show'
		else
			Ship.create(gross_tonne: gross_tonne, dead_weight: dead_weight, imo_number: imo_number, 
				ship_type: ship_type, ship_owner_id: ship_owner_id)
			flash[:alert] = "Ship has been succesfully added"

			redirect_to controller: :ship_owners, action: :profile, id: ship_owner_id
		end
	end
end
