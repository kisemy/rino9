require "application_system_test_case"

class InvoiceLinesTest < ApplicationSystemTestCase
  setup do
    @invoice_line = invoice_lines(:one)
  end

  test "visiting the index" do
    visit invoice_lines_url
    assert_selector "h1", text: "Invoice Lines"
  end

  test "creating a Invoice line" do
    visit invoice_lines_url
    click_on "New Invoice Line"

    fill_in "Amount", with: @invoice_line.amount
    fill_in "Charge type", with: @invoice_line.charge_type
    fill_in "Description", with: @invoice_line.description
    fill_in "Invoice", with: @invoice_line.invoice_id
    fill_in "Item no", with: @invoice_line.item_no
    fill_in "Quantity", with: @invoice_line.quantity
    fill_in "Unit of measure", with: @invoice_line.unit_of_measure
    fill_in "Unit price", with: @invoice_line.unit_price
    click_on "Create Invoice line"

    assert_text "Invoice line was successfully created"
    click_on "Back"
  end

  test "updating a Invoice line" do
    visit invoice_lines_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @invoice_line.amount
    fill_in "Charge type", with: @invoice_line.charge_type
    fill_in "Description", with: @invoice_line.description
    fill_in "Invoice", with: @invoice_line.invoice_id
    fill_in "Item no", with: @invoice_line.item_no
    fill_in "Quantity", with: @invoice_line.quantity
    fill_in "Unit of measure", with: @invoice_line.unit_of_measure
    fill_in "Unit price", with: @invoice_line.unit_price
    click_on "Update Invoice line"

    assert_text "Invoice line was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice line" do
    visit invoice_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice line was successfully destroyed"
  end
end
