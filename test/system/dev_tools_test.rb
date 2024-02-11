require "application_system_test_case"

class DevToolsTest < ApplicationSystemTestCase
  setup do
    @dev_tool = dev_tools(:one)
  end

  test "visiting the index" do
    visit dev_tools_url
    assert_selector "h1", text: "Dev tools"
  end

  test "should create dev tool" do
    visit dev_tools_url
    click_on "New dev tool"

    fill_in "Description", with: @dev_tool.description
    fill_in "Name", with: @dev_tool.name
    click_on "Create Dev tool"

    assert_text "Dev tool was successfully created"
    click_on "Back"
  end

  test "should update Dev tool" do
    visit dev_tool_url(@dev_tool)
    click_on "Edit this dev tool", match: :first

    fill_in "Description", with: @dev_tool.description
    fill_in "Name", with: @dev_tool.name
    click_on "Update Dev tool"

    assert_text "Dev tool was successfully updated"
    click_on "Back"
  end

  test "should destroy Dev tool" do
    visit dev_tool_url(@dev_tool)
    click_on "Destroy this dev tool", match: :first

    assert_text "Dev tool was successfully destroyed"
  end
end
