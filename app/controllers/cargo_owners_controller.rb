class CargoOwnersController < ApplicationController

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
		@user = CargoOwner.where("username = ?", username)
		
		if @user.empty? != true
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
			CargoOwner.create(username: username, password_digest: password, first_name: first_name,
			last_name: last_name, email_address: email, phone_number: phone_number, country: country)
			flash[:notice] = "Account successfully created. Please login to your account"
			render 'show'
		end
	end

	def profile
		user_id = params[:id]
		user = CargoOwner.where("id = ?", user_id)


		if user[0] != nil
			@user = user[0]
			@cargo = Cargo.where("cargo_owner_id = ?", user_id)
			@rating = Rating.find_by cargo_owner_id: user_id
			@half = false

			if @rating != nil
				if (@rating.rating) > (@rating.rating.to_i + 0.4)
					@half = true
				end
			end

			render 'profile'
		else
			@invalid = "No user with such profile"
			render 'profile'
		end
	end

	def rating
		user_rating = params[:rating].to_i
		cargo_owner = params[:cargo_owner]
		ship_owner = params[:ship_owner]

		# co_rating refers to Cargo Owner Rating
		co_rating = Rating.find_by cargo_owner_id: cargo_owner

		if co_rating != nil
			co_rating.total += user_rating
			co_rating.count += 1
			co_rating.rating = co_rating.total / co_rating.count
			co_rating.save
		else
			Rating.create(total: user_rating, count: 1, rating: user_rating, cargo_owner_id: cargo_owner)
		end

		redirect_to action: 'profile', id: cargo_owner
	end
end
