class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :dni, null =>false
      t.string :nombre

      t.timestamps null: false
    end
  end
end
