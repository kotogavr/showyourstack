# frozen_string_literal: true

require 'test_helper'

class DevToolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dev_tool = dev_tools(:one)
  end

  test 'should get index' do
    get dev_tools_url
    assert_response :success
  end

  test 'should get new' do
    get new_dev_tool_url
    assert_response :success
  end

  test 'should create dev_tool' do
    assert_difference('DevTool.count') do
      post dev_tools_url, params: { dev_tool: { description: @dev_tool.description, name: @dev_tool.name } }
    end

    assert_redirected_to dev_tool_url(DevTool.last)
  end

  test 'should show dev_tool' do
    get dev_tool_url(@dev_tool)
    assert_response :success
  end

  test 'should get edit' do
    get edit_dev_tool_url(@dev_tool)
    assert_response :success
  end

  test 'should update dev_tool' do
    patch dev_tool_url(@dev_tool), params: { dev_tool: { description: @dev_tool.description, name: @dev_tool.name } }
    assert_redirected_to dev_tool_url(@dev_tool)
  end

  test 'should destroy dev_tool' do
    assert_difference('DevTool.count', -1) do
      delete dev_tool_url(@dev_tool)
    end

    assert_redirected_to dev_tools_url
  end
end
