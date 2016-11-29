class AddRates < ActiveRecord::Migration[5.0]
  def change
  	create_table :rates do |t|
      t.integer :user_id
      t.integer :rate

      t.timestamps null: false
    end
  end
end