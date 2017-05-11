class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.date :start_date
      t.date :end_date
      t.integer :rent_price
      t.references :user, foreign_key: true
      t.references :watch, foreign_key: true

      t.timestamps
    end
  end
end
