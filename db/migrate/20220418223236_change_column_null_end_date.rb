class ChangeColumnNullEndDate < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :end_date, :datetime, null: false
  end
end
