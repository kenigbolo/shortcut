class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.references :ship_owner, index: true

      t.string	:present_port
      t.string	:destination_port
      t.decimal	:gross_tonne
      t.decimal	:dead_weight
      t.integer	:imo_number
      t.string	:ship_type
      t.timestamps
    end
  end
end
