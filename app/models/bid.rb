class Bid < ApplicationRecord

	belongs_to :cargo
	has_many :bidders


	def self.countdown(deadline)
	  while Time.now < deadline
	    t = Time.at(deadline.to_i - Time.now.to_i)
	    p t.strftime('%H:%M:%S')
	    sleep 1
	  end
	end

end
