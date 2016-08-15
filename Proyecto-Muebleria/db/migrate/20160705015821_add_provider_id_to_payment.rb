class AddProviderIdToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :provider_id, :integer
  end
end
