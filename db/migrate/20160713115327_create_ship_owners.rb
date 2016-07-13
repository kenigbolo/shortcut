class CreateShipOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_owners do |t|
      t.string	"username"
      t.string	"password_digest"
      t.string	"first_name"
      t.string	"last_name"
      t.string	"email_address"
      t.string	"phone_number"
      t.string	"country"
      t.string	"company_name"
      t.string	"company_address"
      t.timestamps
    end
  end
end
