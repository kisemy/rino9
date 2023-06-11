require 'test_helper'

class InvoiceLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_line = invoice_lines(:one)
  end

  test "should get index" do
    get invoice_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_line_url
    assert_response :success
  end

  test "should create invoice_line" do
    assert_difference('InvoiceLine.count') do
      post invoice_lines_url, params: { invoice_line: { amount: @invoice_line.amount, charge_type: @invoice_line.charge_type, description: @invoice_line.description, invoice_id: @invoice_line.invoice_id, item_no: @invoice_line.item_no, quantity: @invoice_line.quantity, unit_of_measure: @invoice_line.unit_of_measure, unit_price: @invoice_line.unit_price } }
    end

    assert_redirected_to invoice_line_url(InvoiceLine.last)
  end

  test "should show invoice_line" do
    get invoice_line_url(@invoice_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_line_url(@invoice_line)
    assert_response :success
  end

  test "should update invoice_line" do
    patch invoice_line_url(@invoice_line), params: { invoice_line: { amount: @invoice_line.amount, charge_type: @invoice_line.charge_type, description: @invoice_line.description, invoice_id: @invoice_line.invoice_id, item_no: @invoice_line.item_no, quantity: @invoice_line.quantity, unit_of_measure: @invoice_line.unit_of_measure, unit_price: @invoice_line.unit_price } }
    assert_redirected_to invoice_line_url(@invoice_line)
  end

  test "should destroy invoice_line" do
    assert_difference('InvoiceLine.count', -1) do
      delete invoice_line_url(@invoice_line)
    end

    assert_redirected_to invoice_lines_url
  end
end
