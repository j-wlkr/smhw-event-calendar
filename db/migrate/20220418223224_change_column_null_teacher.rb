class ChangeColumnNullTeacher < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :teacher, :string, null: false
  end
end
