class ShipOwner < ApplicationRecord
	
	has_secure_password
	has_many :ships
end
