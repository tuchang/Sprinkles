require 'test_helper'

module Blife
  class DefectsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @defect = blife_defects(:one)
    end

    test "should get index" do
      get defects_url
      assert_response :success
    end

    test "should get new" do
      get new_defect_url
      assert_response :success
    end

    test "should create defect" do
      assert_difference('Defect.count') do
        post defects_url, params: { defect: { actual: @defect.actual, description: @defect.description, expected: @defect.expected, priority_id: @defect.priority_id, severity_id: @defect.severity_id, steps_to_reproduce: @defect.steps_to_reproduce, summary: @defect.summary } }
      end

      assert_redirected_to defect_url(Defect.last)
    end

    test "should show defect" do
      get defect_url(@defect)
      assert_response :success
    end

    test "should get edit" do
      get edit_defect_url(@defect)
      assert_response :success
    end

    test "should update defect" do
      patch defect_url(@defect), params: { defect: { actual: @defect.actual, description: @defect.description, expected: @defect.expected, priority_id: @defect.priority_id, severity_id: @defect.severity_id, steps_to_reproduce: @defect.steps_to_reproduce, summary: @defect.summary } }
      assert_redirected_to defect_url(@defect)
    end

    test "should destroy defect" do
      assert_difference('Defect.count', -1) do
        delete defect_url(@defect)
      end

      assert_redirected_to defects_url
    end
  end
end
