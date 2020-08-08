require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Address", with: @employee.address
    fill_in "Date birth", with: @employee.date_birth
    fill_in "Doc id number", with: @employee.doc_id_number
    fill_in "Email", with: @employee.email
    fill_in "Hiring date", with: @employee.hiring_date
    fill_in "Job area", with: @employee.job_area
    fill_in "Job position", with: @employee.job_position
    fill_in "Last name", with: @employee.last_name
    fill_in "Name", with: @employee.name
    fill_in "Type doc", with: @employee.type_doc_id
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Address", with: @employee.address
    fill_in "Date birth", with: @employee.date_birth
    fill_in "Doc id number", with: @employee.doc_id_number
    fill_in "Email", with: @employee.email
    fill_in "Hiring date", with: @employee.hiring_date
    fill_in "Job area", with: @employee.job_area
    fill_in "Job position", with: @employee.job_position
    fill_in "Last name", with: @employee.last_name
    fill_in "Name", with: @employee.name
    fill_in "Type doc", with: @employee.type_doc_id
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
