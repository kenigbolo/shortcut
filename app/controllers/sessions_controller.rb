class SessionsController < ApplicationController

	def cargo_login
		render 'cargo-login'
	end

	def ship_login
		render 'ship-login'
	end

	def create_cargo
		username = params[:username]
		password = params[:password]

		@user = CargoOwner.where("username = ?", username)
		if @user.length > 0
			if @user[0].password_digest == password
				session[:current_user_id] = @user[0].id
				@user = @user[0]
				render 'cargo_owners/profile'
			else
				flash[:alert] = "You've entered the wrong password"
				redirect_to cargo_login_path
			end
		else
			flash[:alert] = "You've entered an incorrect username"
			redirect_to cargo_login_path
		end
	end


	def create_ship
		username = params[:username]
		password = params[:password]

		@user = ShipOwner.where("username = ?", username)
		if @user.length > 0
			if @user[0].password_digest == password
				session[:current_user_id] = @user[0].id
				@user = @user[0]
				render 'ship_owners/profile'
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
		render 'marketplace/index'
	end

end
