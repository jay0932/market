class AddOrdersColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :shop_id, :integer
  end
end
