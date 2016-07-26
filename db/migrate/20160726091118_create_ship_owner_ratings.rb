class CreateShipOwnerRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_owner_ratings do |t|

      t.timestamps
    end
  end
end
