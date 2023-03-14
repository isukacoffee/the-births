require 'test_helper'

class BirthdaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get birthday_index_url
    assert_response :success
  end

end
