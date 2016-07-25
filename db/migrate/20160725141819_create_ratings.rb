class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :ship_owner, index: true
      t.references :cargo_owner, index: true

      t.decimal "total"
      t.integer "count"
      t.decimal "rating"
      t.timestamps
    end
  end
end
