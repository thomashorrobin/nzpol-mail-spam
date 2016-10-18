require 'test_helper'

class PostCodesControllerTest < ActionController::TestCase
  setup do
    @post_code = post_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_code" do
    assert_difference('PostCode.count') do
      post :create, post_code: { code: @post_code.code }
    end

    assert_redirected_to post_code_path(assigns(:post_code))
  end

  test "should show post_code" do
    get :show, id: @post_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_code
    assert_response :success
  end

  test "should update post_code" do
    patch :update, id: @post_code, post_code: { code: @post_code.code }
    assert_redirected_to post_code_path(assigns(:post_code))
  end

  test "should destroy post_code" do
    assert_difference('PostCode.count', -1) do
      delete :destroy, id: @post_code
    end

    assert_redirected_to post_codes_path
  end
end
