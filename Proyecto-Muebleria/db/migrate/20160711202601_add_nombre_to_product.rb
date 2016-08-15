class AddNombreToProduct < ActiveRecord::Migration
  def change
    add_column :products, :nombre, :string
  end
end
