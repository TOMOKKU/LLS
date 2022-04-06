require "test_helper"

class VegetableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vegetable_index_url
    assert_response :success
  end
end
