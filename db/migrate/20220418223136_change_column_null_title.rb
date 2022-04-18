class ChangeColumnNullTitle < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :title, :string, null: false
  end
end
