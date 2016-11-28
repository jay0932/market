class AddUsers < ActiveRecord::Migration[5.0]
  def change
  	create_table :users do |t|
  		t.string :name
      t.string :nickname
      t.string :pwd
      t.string :emal
      t.string :mobile
      t.string :role
      t.string :status
      t.text   :note

      t.timestamps null: false
  	end
  end
end
