class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :category
      t.decimal :total_amount
      t.date :expense_date
      t.string :company_name
      t.string :description
      t.integer :ruc_number

      t.timestamps
    end
  end
end
