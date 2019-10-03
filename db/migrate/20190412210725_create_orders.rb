class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :address
      t.boolean :order_filled, default: false
      t.integer :customer_id

      t.timestamps
    end
  end
end
