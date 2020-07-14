class CreateCandies < ActiveRecord::Migration[6.0]
  def change
    create_table :candies do |t|
      t.string :name
      t.integer :price
      t.string :brand

      t.timestamps
    end
  end
end
