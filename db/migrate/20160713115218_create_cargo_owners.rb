class CreateCargoOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :cargo_owners do |t|

      t.timestamps
    end
  end
end
