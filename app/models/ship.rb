class Ship < ApplicationRecord

	belongs_to :ship_owner
	has_many :ship_bids
end
