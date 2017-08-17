class CreateCometa < ActiveRecord::Migration
  def change
    create_table :cometa do |t|
      t.string :Cometa
      t.string :Tamano
      t.string :Color
      t.string :Stela
      t.string :Trayectoria

      t.timestamps null: false
    end
  end
end
