require "application_system_test_case"

class BanksTest < ApplicationSystemTestCase
  setup do
    @bank = banks(:one)
  end

  test "visiting the index" do
    visit banks_url
    assert_selector "h1", text: "Banks"
  end

  test "creating a Bank" do
    visit banks_url
    click_on "New Bank"

    fill_in "Balance", with: @bank.balance
    fill_in "Bank acc no", with: @bank.bank_acc_no
    fill_in "Bank name", with: @bank.bank_name
    fill_in "Posting group", with: @bank.posting_group
    click_on "Create Bank"

    assert_text "Bank was successfully created"
    click_on "Back"
  end

  test "updating a Bank" do
    visit banks_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @bank.balance
    fill_in "Bank acc no", with: @bank.bank_acc_no
    fill_in "Bank name", with: @bank.bank_name
    fill_in "Posting group", with: @bank.posting_group
    click_on "Update Bank"

    assert_text "Bank was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank" do
    visit banks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank was successfully destroyed"
  end
end
