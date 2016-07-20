class Bid < ApplicationRecord

	belongs_to :cargo
	has_many :bidders
end
