class CargosController < ApplicationController

	def show

		user = CargoOwner.where("id = ?", params[:id])
		@user = user[0]

		render 'show'
	end
end
