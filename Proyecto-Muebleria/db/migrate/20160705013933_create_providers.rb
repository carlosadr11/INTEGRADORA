class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nombre
      t.string :apellido
      t.string :domiciolio
      t.string :telefono
      t.string :email
      t.integer :totalProductos
      t.date :fecha
      t.integer :totalPago

      t.timestamps null: false
    end
  end
end
