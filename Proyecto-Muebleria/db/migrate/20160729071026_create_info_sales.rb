class CreateInfoSales < ActiveRecord::Migration
  def change
    create_table :info_sales do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad
      t.float :precio

      t.timestamps null: false
    end
  end
end
