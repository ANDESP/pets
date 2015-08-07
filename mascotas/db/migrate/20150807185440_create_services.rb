class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :servicio
      t.decimal :costo
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
