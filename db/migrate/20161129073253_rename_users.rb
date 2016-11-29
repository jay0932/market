class RenameUsers < ActiveRecord::Migration[5.0]
  def change
      rename_column :users, :emal, :email
  end
end
