class AddStripeChargeToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :stripe_charge_id, :integer
  end
end
