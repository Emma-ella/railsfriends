require "application_system_test_case"

class FriendssesTest < ApplicationSystemTestCase
  setup do
    @friendss = friendsses(:one)
  end

  test "visiting the index" do
    visit friendsses_url
    assert_selector "h1", text: "Friendsses"
  end

  test "should create friendss" do
    visit friendsses_url
    click_on "New friendss"

    fill_in "E mail", with: @friendss.e_mail
    fill_in "Firsst name", with: @friendss.firsst_name
    fill_in "Last name", with: @friendss.last_name
    fill_in "Phone", with: @friendss.phone
    fill_in "Twitter", with: @friendss.twitter
    click_on "Create Friendss"

    assert_text "Friendss was successfully created"
    click_on "Back"
  end

  test "should update Friendss" do
    visit friendss_url(@friendss)
    click_on "Edit this friendss", match: :first

    fill_in "E mail", with: @friendss.e_mail
    fill_in "Firsst name", with: @friendss.firsst_name
    fill_in "Last name", with: @friendss.last_name
    fill_in "Phone", with: @friendss.phone
    fill_in "Twitter", with: @friendss.twitter
    click_on "Update Friendss"

    assert_text "Friendss was successfully updated"
    click_on "Back"
  end

  test "should destroy Friendss" do
    visit friendss_url(@friendss)
    click_on "Destroy this friendss", match: :first

    assert_text "Friendss was successfully destroyed"
  end
end
