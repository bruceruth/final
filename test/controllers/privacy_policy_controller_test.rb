require 'test_helper'

class PrivacyPolicyControllerTest < ActionController::TestCase
  test "should get privacyPolicy" do
    get :privacyPolicy
    assert_response :success
  end

end
