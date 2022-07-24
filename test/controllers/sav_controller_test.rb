require 'test_helper'

class SavControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sav_index_url
    assert_response :success
  end

end
