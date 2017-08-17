class CreateGalaxia < ActiveRecord::Migration
  def change
    create_table :galaxia do |t|
      t.string :Galaxia
      t.string :Diametro
      t.integer :CantidadEstrellas
      t.integer :CantidadPlanetas

      t.timestamps null: false
    end
  end
end
