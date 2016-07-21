class ShipBid < ApplicationRecord
	
	belongs_to :ship
	has_many :ship_bidders
end
