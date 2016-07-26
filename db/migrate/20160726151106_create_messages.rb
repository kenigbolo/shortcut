class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :ship_owner, index: true
      t.references :cargo_owner, index: true

      t.text "from"
      t.text "subject"
      t.text "content"
      t.timestamps
    end
  end
end
