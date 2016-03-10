require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  test "we can look up docs" do
    get "/docs/classAlertWindow"
    assert_response :success
  end

  test "unknown docs 404" do
    assert_raises ActionController::RoutingError do
      get "/docs/juceHaskellEdition"
    end
  end
end
