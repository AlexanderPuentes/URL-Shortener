require 'test_helper'

class ShortenerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shortener_index_url
    assert_response :success
  end

  test "should get create" do
    get shortener_create_url
    assert_response :success
  end

  test "should get show" do
    get shortener_show_url
    assert_response :success
  end

end
