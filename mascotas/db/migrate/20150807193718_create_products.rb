class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :producto
      t.decimal :costo

      t.timestamps null: false
    end
  end
end
