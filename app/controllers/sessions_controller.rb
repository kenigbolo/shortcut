class SessionsController < ApplicationController

	def cargo_login
		render 'cargo-login'
	end

	def ship_login
		render 'ship-login'
	end

	def login_cargo
		username = params[:username]
		password = params[:password]

		@user = CargoOwner.where("username = ?", username)
		if @user.length > 0
			if @user[0].password_digest == password
				session[:current_user_id] = @user[0].id
				if @user[0].class == CargoOwner
					session[:current_user_class] = "CargoOwner"
				end
				@user = @user[0]
				redirect_to controller: 'cargo_owners', action: 'profile', id: @user.id
			else
				flash[:alert] = "You've entered the wrong password"
				render 'cargo-login'
			end
		else
			flash[:alert] = "You've entered an incorrect username"
			render 'cargo-login'
		end
	end


	def login_ship
		username = params[:username]
		password = params[:password]

		@user = ShipOwner.where("username = ?", username)
		if @user.length > 0
			if @user[0].password_digest == password
				session[:current_user_id] = @user[0].id
				if @user[0].class == ShipOwner
					session[:current_user_class] = "ShipOwner"
				end
				@user = @user[0]
				redirect_to controller: 'ship_owners', action: 'profile', id: @user.id
			else
				flash[:alert] = "You've entered the wrong password"
				render 'ship-login'
			end
		else
			flash[:alert] = "You've entered an incorrect username"
			render 'ship-login'
		end
	end

	def destroy
		session[:current_user_id] = nil
		session[:current_user_class] = nil
		render 'marketplace/index'
	end

end
