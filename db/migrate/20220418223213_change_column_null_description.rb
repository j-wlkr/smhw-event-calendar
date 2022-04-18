class ChangeColumnNullDescription < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :description, :text, null: false
  end
end
