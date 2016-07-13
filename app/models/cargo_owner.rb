class CargoOwner < ApplicationRecord
	
	has_secure_password
	has_many :cargos
end
