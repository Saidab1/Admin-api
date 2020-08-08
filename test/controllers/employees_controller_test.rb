require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { address: @employee.address, date_birth: @employee.date_birth, doc_id_number: @employee.doc_id_number, email: @employee.email, hiring_date: @employee.hiring_date, job_area: @employee.job_area, job_position: @employee.job_position, last_name: @employee.last_name, name: @employee.name, type_doc_id: @employee.type_doc_id } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { address: @employee.address, date_birth: @employee.date_birth, doc_id_number: @employee.doc_id_number, email: @employee.email, hiring_date: @employee.hiring_date, job_area: @employee.job_area, job_position: @employee.job_position, last_name: @employee.last_name, name: @employee.name, type_doc_id: @employee.type_doc_id } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end
