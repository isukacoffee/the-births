require 'test_helper'

class BirthdayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get birthday_index_url
    assert_response :success
  end

end
