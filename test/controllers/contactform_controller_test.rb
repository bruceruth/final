require 'test_helper'
require 'minitest'

class ContactformControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

end
