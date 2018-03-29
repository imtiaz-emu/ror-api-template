require 'test_helper'

class Api::V1::BookCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_book_category = api_v1_book_categories(:one)
  end

  test "should get index" do
    get api_v1_book_categories_url, as: :json
    assert_response :success
  end

  test "should create api_v1_book_category" do
    assert_difference('Api::V1::BookCategory.count') do
      post api_v1_book_categories_url, params: { api_v1_book_category: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_book_category" do
    get api_v1_book_category_url(@api_v1_book_category), as: :json
    assert_response :success
  end

  test "should update api_v1_book_category" do
    patch api_v1_book_category_url(@api_v1_book_category), params: { api_v1_book_category: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_book_category" do
    assert_difference('Api::V1::BookCategory.count', -1) do
      delete api_v1_book_category_url(@api_v1_book_category), as: :json
    end

    assert_response 204
  end
end
