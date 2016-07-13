class CreateCargos < ActiveRecord::Migration[5.0]
  def change
    create_table :cargos do |t|
      t.references :cargo_owner, index: true

      t.decimal	"weight"
      t.decimal	"volume"
      t.decimal	"density"
      t.string	"cargo_type"
      t.string	"present_port"
      t.string	"destination_port"
      t.date	"arrival_date"
      t.string  "description"
      t.string	"status"	
      t.timestamps
    end
  end
end
