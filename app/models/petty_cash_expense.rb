class PettyCashExpense < ApplicationRecord
    validates :total_amount, :invoice_number, :expense_date, :description, :paid_to, presence: true
end
