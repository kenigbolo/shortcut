class CreateBidders < ActiveRecord::Migration[5.0]
  def change
    create_table :bidders do |t|
      t.references :bid, index: true

      t.text "name"
      t.text "category"
      t.timestamps
    end
  end
end
