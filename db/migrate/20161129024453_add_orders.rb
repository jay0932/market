class AddOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string  :status
      t.datetime :order_time

      t.timestamps null: false
    end
  end
end
