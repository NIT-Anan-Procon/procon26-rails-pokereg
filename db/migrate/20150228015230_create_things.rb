class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.integer :price
      t.integer :amount
      t.string :category

      t.timestamps
    end
  end
end
