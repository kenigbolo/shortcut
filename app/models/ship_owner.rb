class ShipOwner < ApplicationRecord
	
	has_secure_password
	has_many :ships
	has_one :ship_owner_rating
	has_many :messages
end
