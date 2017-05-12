class CreateWatches < ActiveRecord::Migration[5.1]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :model
      t.integer :price
      t.string :gender
      t.string :mechanism
      t.string :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
