class CreateShipOwnerRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_owner_ratings do |t|
      t.references :ship_owner, index: true

      t.decimal "total"
      t.integer "count"
      t.decimal "rating"
      t.timestamps
    end
  end
end
