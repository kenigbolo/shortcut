class CreateShipBids < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_bids do |t|

      t.timestamps
    end
  end
end
