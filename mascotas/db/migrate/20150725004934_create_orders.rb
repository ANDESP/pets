class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :fecha
      t.references :pacient, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
