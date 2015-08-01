class CreatePacients < ActiveRecord::Migration
  def change
    create_table :pacients do |t|
      t.string :mascota
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
