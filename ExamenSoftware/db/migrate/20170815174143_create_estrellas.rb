class CreateEstrellas < ActiveRecord::Migration
  def change
    create_table :estrellas do |t|
      t.string :Estrella
      t.string :Tamano
      t.string :Masa
      t.string :Volumen
      t.string :Localizacion
      t.string :Color

      t.timestamps null: false
    end
  end
end
