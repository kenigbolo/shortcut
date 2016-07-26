class CargoOwner < ApplicationRecord
	
	has_secure_password
	has_many :cargos
	has_one :rating
end
