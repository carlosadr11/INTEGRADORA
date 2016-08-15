class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :fecha
      t.integer :abono

      t.timestamps null: false
    end
  end
end
