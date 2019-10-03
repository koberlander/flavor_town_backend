class CreateFlavorOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :flavor_orders do |t|
      t.integer :flavor_id
      t.integer :order_id

      t.timestamps
    end
  end
end
