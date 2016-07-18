class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.references :cargo, index: true

      t.text "description"
      t.decimal "price"
      t.text "winner"
      t.date "end_date"
      t.timestamps
    end
  end
end
