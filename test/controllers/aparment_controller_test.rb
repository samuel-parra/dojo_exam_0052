require "test_helper"

class AparmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aparment_index_url
    assert_response :success
  end

  test "should get new" do
    get aparment_new_url
    assert_response :success
  end

  test "should get show" do
    get aparment_show_url
    assert_response :success
  end
end
