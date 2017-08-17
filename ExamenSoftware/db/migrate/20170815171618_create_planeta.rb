class CreatePlaneta < ActiveRecord::Migration
  def change
    create_table :planeta do |t|
      t.string :Planeta
      t.string :Tamano
      t.integer :Masa
      t.integer :Volumen

      t.timestamps null: false
    end
  end
end
