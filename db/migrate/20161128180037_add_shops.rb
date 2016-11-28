class AddShops < ActiveRecord::Migration[5.0]
  def change
  	create_table :shops do |t|
      t.integer :user_id
      t.string  :city
      t.string  :market_name
      t.string  :address
      t.datetime  :rent_start_datetime
      t.datetime  :rent_end_datetime
      t.float :rent_prices
      t.string :rent_status
      t.text   :shop_tool
      t.text   :shop_note

      t.timestamps null: false
    end
  end
end
