class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.date :fecha
      t.string :total_pago

      t.timestamps null: false
    end
  end
end
