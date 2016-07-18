class ShipOwnersController < ApplicationController

	def index

	end

	def show

	end

	def new
		username = params[:username]
		password = params[:password]
		second_password = params[:repeat_password]
		first_name = params[:first_name]
		last_name = params[:last_name]
		email = params[:email_address]
		phone_number = params[:phone_number]
		country = params[:country]
		company_name = params[:company_name]
		company_address = params[:company_address]
		@user = CargoOwner.where("username = ?", username)
		
		if @users != nil
			if @user[0].username == username
				flash[:alert] = "User already exists"
				render 'index'
			end
		elsif username.empty?
			flash[:alert] = "Username cannot be empty"
			render 'index'
		elsif password != second_password
			flash[:alert] = "Passwords are not the same"
			render 'index'
		else
			ShipOwner.create(username: username, password_digest: password, country: country,
				first_name: first_name,last_name: last_name, email_address: email, phone_number: phone_number,
				company_address: company_address, company_name: company_name)
			flash[:alert] = "Account successfully created. Please login to your account"
			redirect_to 'show'
		end
	end
end
