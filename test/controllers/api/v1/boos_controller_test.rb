require "test_helper"

class Api::V1::BoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_boo = api_v1_boos(:one)
  end

  test "should get index" do
    get api_v1_boos_url, as: :json
    assert_response :success
  end

  test "should create api_v1_boo" do
    assert_difference("Api::V1::Boo.count") do
      post api_v1_boos_url, params: { api_v1_boo: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_boo" do
    get api_v1_boo_url(@api_v1_boo), as: :json
    assert_response :success
  end

  test "should update api_v1_boo" do
    patch api_v1_boo_url(@api_v1_boo), params: { api_v1_boo: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_boo" do
    assert_difference("Api::V1::Boo.count", -1) do
      delete api_v1_boo_url(@api_v1_boo), as: :json
    end

    assert_response :no_content
  end
end
