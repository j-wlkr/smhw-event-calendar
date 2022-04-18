class ChangeColumnNullStartDate < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :start_date, :datetime, null: false
  end
end
