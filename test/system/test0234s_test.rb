require "application_system_test_case"

class Test0234sTest < ApplicationSystemTestCase
  setup do
    @test0234 = test0234s(:one)
  end

  test "visiting the index" do
    visit test0234s_url
    assert_selector "h1", text: "Test0234s"
  end

  test "should create test0234" do
    visit test0234s_url
    click_on "New test0234"

    click_on "Create Test0234"

    assert_text "Test0234 was successfully created"
    click_on "Back"
  end

  test "should update Test0234" do
    visit test0234_url(@test0234)
    click_on "Edit this test0234", match: :first

    click_on "Update Test0234"

    assert_text "Test0234 was successfully updated"
    click_on "Back"
  end

  test "should destroy Test0234" do
    visit test0234_url(@test0234)
    click_on "Destroy this test0234", match: :first

    assert_text "Test0234 was successfully destroyed"
  end
end
