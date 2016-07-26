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
		@user = ShipOwner.where("username = ?", username)
		
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
			ShipOwner.create(username: username, password_digest: password, country: country,
				first_name: first_name,last_name: last_name, email_address: email, phone_number: phone_number,
				company_address: company_address, company_name: company_name)
			flash[:notice] = "Account was successfully created. Login to your account"
			render 'show'
		end
	end

	def profile
		user_id = params[:id]
		user = ShipOwner.where("id = ?", user_id)

		if user[0] != nil
			@user = user[0]
			@ships = Ship.where("ship_owner_id = ?", user_id)
			@rating = ShipOwnerRating.find_by ship_owner_id: user_id
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
		ship_owner = params[:ship_owner]

		# so_rating refers to Ship Owner Rating
		so_rating = ShipOwnerRating.find_by ship_owner_id: ship_owner

		if so_rating != nil
			so_rating.total += user_rating
			so_rating.count += 1
			so_rating.rating = so_rating.total / so_rating.count
			so_rating.save
		else
			ShipOwnerRating.create(total: user_rating, count: 1, rating: user_rating, ship_owner_id: ship_owner)
		end

		redirect_to action: 'profile', id: ship_owner
	end

	def create_message
		@cargo_owner = CargoOwner.where("id = ?", params[:cargo_owner])
		@ship_owner = ShipOwner.where("id = ?", params[:id])
	end

	def save_message

	end
	def save_message
		subject = params[:subject]
		content = params[:content]
		from = CargoOwner.find_by id: params[:cargo_owner]
		to = ShipOwner.find_by id: params[:id]


		Message.create(subject: subject, content: content, from: from.username, to: to.username)

		redirect_to action: 'profile', id: params[:id]
	end
end
