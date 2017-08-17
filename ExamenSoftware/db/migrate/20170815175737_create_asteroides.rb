class CreateAsteroides < ActiveRecord::Migration
  def change
    create_table :asteroides do |t|
      t.string :Asteroide
      t.string :Tamano

      t.timestamps null: false
    end
  end
end
