class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.references :owner, index: true
      t.datetime :bought_at

      t.timestamps
    end
  end
end
