require "application_system_test_case"

class PettyCashExpensesTest < ApplicationSystemTestCase
  setup do
    @petty_cash_expense = petty_cash_expenses(:one)
  end

  test "visiting the index" do
    visit petty_cash_expenses_url
    assert_selector "h1", text: "Petty Cash Expenses"
  end

  test "creating a Petty cash expense" do
    visit petty_cash_expenses_url
    click_on "New Petty Cash Expense"

    fill_in "Description", with: @petty_cash_expense.description
    fill_in "Expense date", with: @petty_cash_expense.expense_date
    fill_in "Invoice number", with: @petty_cash_expense.invoice_number
    fill_in "Paid to", with: @petty_cash_expense.paid_to
    fill_in "Total amount", with: @petty_cash_expense.total_amount
    click_on "Create Petty cash expense"

    assert_text "Petty cash expense was successfully created"
    click_on "Back"
  end

  test "updating a Petty cash expense" do
    visit petty_cash_expenses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @petty_cash_expense.description
    fill_in "Expense date", with: @petty_cash_expense.expense_date
    fill_in "Invoice number", with: @petty_cash_expense.invoice_number
    fill_in "Paid to", with: @petty_cash_expense.paid_to
    fill_in "Total amount", with: @petty_cash_expense.total_amount
    click_on "Update Petty cash expense"

    assert_text "Petty cash expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Petty cash expense" do
    visit petty_cash_expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Petty cash expense was successfully destroyed"
  end
end
