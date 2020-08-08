class Income < ApplicationRecord
  validates :invoice_number, :ruc_number, :total_amount, :date, :company_name, :description, presence: true
  validates :ruc_number, length: {is: 8}
end
