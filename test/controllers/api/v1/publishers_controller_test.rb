require 'test_helper'

class Api::V1::PublishersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_publisher = api_v1_publishers(:one)
  end

  test "should get index" do
    get api_v1_publishers_url, as: :json
    assert_response :success
  end

  test "should create api_v1_publisher" do
    assert_difference('Api::V1::Publisher.count') do
      post api_v1_publishers_url, params: { api_v1_publisher: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_publisher" do
    get api_v1_publisher_url(@api_v1_publisher), as: :json
    assert_response :success
  end

  test "should update api_v1_publisher" do
    patch api_v1_publisher_url(@api_v1_publisher), params: { api_v1_publisher: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_publisher" do
    assert_difference('Api::V1::Publisher.count', -1) do
      delete api_v1_publisher_url(@api_v1_publisher), as: :json
    end

    assert_response 204
  end
end
