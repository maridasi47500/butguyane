require 'test_helper'

class FlipbookControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flipbook_index_url
    assert_response :success
  end

end
