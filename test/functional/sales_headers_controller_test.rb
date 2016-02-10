require 'test_helper'

class SalesHeadersControllerTest < ActionController::TestCase
  setup do
    @sales_header = sales_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_header" do
    assert_difference('SalesHeader.count') do
      post :create, sales_header: { description: @sales_header.description }
    end

    assert_redirected_to sales_header_path(assigns(:sales_header))
  end

  test "should show sales_header" do
    get :show, id: @sales_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_header
    assert_response :success
  end

  test "should update sales_header" do
    put :update, id: @sales_header, sales_header: { description: @sales_header.description }
    assert_redirected_to sales_header_path(assigns(:sales_header))
  end

  test "should destroy sales_header" do
    assert_difference('SalesHeader.count', -1) do
      delete :destroy, id: @sales_header
    end

    assert_redirected_to sales_headers_path
  end
end
