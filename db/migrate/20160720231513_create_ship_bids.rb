class CreateShipBids < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_bids do |t|
      t.references :ship, index: true
      
      t.text "available_space"
      t.decimal "price"
      t.text "winner"
      t.date "departure_date"
      t.timestamps
    end
  end
end
