class RenameOrdersColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :user_id, :buyer_id
  end
end
