require 'test_helper'

class PettyCashExpensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @petty_cash_expense = petty_cash_expenses(:one)
  end

  test "should get index" do
    get petty_cash_expenses_url
    assert_response :success
  end

  test "should get new" do
    get new_petty_cash_expense_url
    assert_response :success
  end

  test "should create petty_cash_expense" do
    assert_difference('PettyCashExpense.count') do
      post petty_cash_expenses_url, params: { petty_cash_expense: { description: @petty_cash_expense.description, expense_date: @petty_cash_expense.expense_date, invoice_number: @petty_cash_expense.invoice_number, paid_to: @petty_cash_expense.paid_to, total_amount: @petty_cash_expense.total_amount } }
    end

    assert_redirected_to petty_cash_expense_url(PettyCashExpense.last)
  end

  test "should show petty_cash_expense" do
    get petty_cash_expense_url(@petty_cash_expense)
    assert_response :success
  end

  test "should get edit" do
    get edit_petty_cash_expense_url(@petty_cash_expense)
    assert_response :success
  end

  test "should update petty_cash_expense" do
    patch petty_cash_expense_url(@petty_cash_expense), params: { petty_cash_expense: { description: @petty_cash_expense.description, expense_date: @petty_cash_expense.expense_date, invoice_number: @petty_cash_expense.invoice_number, paid_to: @petty_cash_expense.paid_to, total_amount: @petty_cash_expense.total_amount } }
    assert_redirected_to petty_cash_expense_url(@petty_cash_expense)
  end

  test "should destroy petty_cash_expense" do
    assert_difference('PettyCashExpense.count', -1) do
      delete petty_cash_expense_url(@petty_cash_expense)
    end

    assert_redirected_to petty_cash_expenses_url
  end
end
