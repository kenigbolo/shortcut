class CreateShipBidders < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_bidders do |t|
      t.references :ship_bid, index: true

      t.text "name"
      t.text "category"
      t.timestamps
    end
  end
end
