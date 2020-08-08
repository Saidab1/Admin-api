class CashFlowsController < ApplicationController
  def index
    incomes = Income.group("month_year, company_name").order("month_year DESC").pluck("to_char(date, 'Mon YYYY') as month_year, company_name, SUM(total_amount)")
    hash_incomes = Hash.new { |hash, key| hash[key] = {} }
    incomes.each { |row| hash_incomes[row.first][row[1]] = row[2] }

    expenses = Expense.group("month_year, company_name").order("month_year DESC").pluck("to_char(date, 'Mon YYYY') as month_year, company_name, SUM(total_amount)")
    hash_expenses = Hash.new { |hash, key| hash[key] = {} }
    expenses.each { |row| hash_expenses[row.first][row[1]] = row[2] }

    render json: {income: hash_incomes, expense: hash_expenses}
  end
end
