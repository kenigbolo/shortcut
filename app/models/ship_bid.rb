class ShipBid < ApplicationRecord
	
	belongs_to :ship
	has_many :ship_bidders

	def self.countdown(deadline)
	  while Time.now < deadline
	    t = Time.at(deadline.to_i - Time.now.to_i)
	    p t.strftime('%H:%M:%S')
	    sleep 1
	  end
	end
end
