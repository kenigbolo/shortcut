class Message < ApplicationRecord

	belongs_to :cargo_owners
	belongs_to :ship_owners
end
