require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get store" do
    get static_pages_store_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get blog" do
    get static_pages_blog_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

end
