class Expense < ApplicationRecord
  enum category: {purchases: "purchases", administrative_expenses: "administrative_expenses", salary_payments: "salary_payments", others: "others", petty_cash: "petty_cash"}

  validates :category, :total_amount, :date, :company_name, :description, :ruc_number, presence: true
  validates :ruc_number, length: {is: 8}
end
