class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :servicio
      t.decimal :costo

      t.timestamps null: false
    end
  end
end
