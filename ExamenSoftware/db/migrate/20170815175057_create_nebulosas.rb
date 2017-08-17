class CreateNebulosas < ActiveRecord::Migration
  def change
    create_table :nebulosas do |t|
      t.string :Nebulosa
      t.string :TipoNebulosa

      t.timestamps null: false
    end
  end
end
