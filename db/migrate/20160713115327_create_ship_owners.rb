class CreateShipOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_owners do |t|

      t.timestamps
    end
  end
end
