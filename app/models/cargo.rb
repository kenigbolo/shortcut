class Cargo < ApplicationRecord

	belongs_to :cargo_owner
	has_one :bid
end
