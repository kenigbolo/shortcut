class AddDepatureDateToShips < ActiveRecord::Migration[5.0]
  def change
  	add_column :ships, :depature_date, :date
  end
end
