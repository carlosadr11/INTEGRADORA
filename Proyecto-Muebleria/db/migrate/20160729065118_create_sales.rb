class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :fecha
      t.string :totalPago
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
