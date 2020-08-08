# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(
  name: "Sara",
  last_name: "Bellomo",
  date_birth: 5.days.ago,
  job_position: "Developer",
  address: "Magdalena del Mar, Av Lurin 546",
  type_doc_id: "dni",
  doc_id_number: 78945612,
  hiring_date: 2.months.ago,
  email: "sarab@gmail.com",
  job_area: "engineering"
)

Income.create(
  invoice_number: 456789123,
  ruc_number: 45612301,
  total_amount: 1234,
  date: 1.months.ago,
  company_name: "Lulu Enterprise",
  description: "invoice"
)
Income.create(invoice_number: 456789123, ruc_number: 45612301, total_amount: 1234, date: 1.months.ago, company_name: "Lulurr Enterprise", description: "invoice")

Expense.create(category: "others", total_amount: 123, company_name: "Lulu carwash", description: "all carwash services", date: 10.days.ago, ruc_number: 45612378)

PettyCashExpense.create(total_amount: 45, invoice_number: 1234549205, expense_date: 2.months.ago, description: "5 coffees were bought for clients", paid_to: "Sara Bellomo")


r = Income.group('month_year, company_name').pluck("to_char(date, 'Mon YYYY') as month_year, company_name, SUM(total_amount)")
hash = {}
r.each { |row| hash[row.first][row[1]] = row[2] }
render json: {income: income_data, expense: expense_data]}
