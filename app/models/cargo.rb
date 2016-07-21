class Cargo < ApplicationRecord

	belongs_to :cargo_owner
	has_many :bids
end
