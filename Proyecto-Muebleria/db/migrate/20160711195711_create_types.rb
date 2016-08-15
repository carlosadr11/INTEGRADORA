class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
