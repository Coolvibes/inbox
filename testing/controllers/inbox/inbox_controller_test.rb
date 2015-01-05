require 'test_helper'

module Inbox
  class InboxControllerTest < ActionController::TestCase
    test "should get view" do
      get :view
      assert_response :success
    end

    test "should get sent" do
      get :sent
      assert_response :success
    end

    test "should get show_msg" do
      get :show_msg
      assert_response :success
    end

  end
end
