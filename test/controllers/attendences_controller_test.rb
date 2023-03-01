require "test_helper"

class AttendencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendences_index_url
    assert_response :success
  end

  test "should get new" do
    get attendences_new_url
    assert_response :success
  end

  test "should get edit" do
    get attendences_edit_url
    assert_response :success
  end
end
