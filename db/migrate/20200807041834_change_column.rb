class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :incomes, :total_amount, :float
  end
end
