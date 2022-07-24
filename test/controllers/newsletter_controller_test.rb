require 'test_helper'

class NewsletterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsletter_index_url
    assert_response :success
  end

end
