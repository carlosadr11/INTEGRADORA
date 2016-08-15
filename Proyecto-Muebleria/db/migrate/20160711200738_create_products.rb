class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :cantidad
      t.string :precio

      t.timestamps null: false
    end
  end
end
