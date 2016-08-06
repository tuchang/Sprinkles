require 'test_helper'

module Blife
  class PrioritiesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @priority = blife_priorities(:one)
    end

    test "should get index" do
      get priorities_url
      assert_response :success
    end

    test "should get new" do
      get new_priority_url
      assert_response :success
    end

    test "should create priority" do
      assert_difference('Priority.count') do
        post priorities_url, params: { priority: { description: @priority.description, name: @priority.name } }
      end

      assert_redirected_to priority_url(Priority.last)
    end

    test "should show priority" do
      get priority_url(@priority)
      assert_response :success
    end

    test "should get edit" do
      get edit_priority_url(@priority)
      assert_response :success
    end

    test "should update priority" do
      patch priority_url(@priority), params: { priority: { description: @priority.description, name: @priority.name } }
      assert_redirected_to priority_url(@priority)
    end

    test "should destroy priority" do
      assert_difference('Priority.count', -1) do
        delete priority_url(@priority)
      end

      assert_redirected_to priorities_url
    end
  end
end
