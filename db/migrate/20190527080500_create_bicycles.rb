class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.string :description
      t.string :address
      t.integer :price_per_day
      t.string :type
      t.string :brand
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
