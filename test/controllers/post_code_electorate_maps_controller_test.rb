require 'test_helper'

class PostCodeElectorateMapsControllerTest < ActionController::TestCase
  setup do
    @post_code_electorate_map = post_code_electorate_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_code_electorate_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_code_electorate_map" do
    assert_difference('PostCodeElectorateMap.count') do
      post :create, post_code_electorate_map: { electorate_id: @post_code_electorate_map.electorate_id, post_code_id: @post_code_electorate_map.post_code_id }
    end

    assert_redirected_to post_code_electorate_map_path(assigns(:post_code_electorate_map))
  end

  test "should show post_code_electorate_map" do
    get :show, id: @post_code_electorate_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_code_electorate_map
    assert_response :success
  end

  test "should update post_code_electorate_map" do
    patch :update, id: @post_code_electorate_map, post_code_electorate_map: { electorate_id: @post_code_electorate_map.electorate_id, post_code_id: @post_code_electorate_map.post_code_id }
    assert_redirected_to post_code_electorate_map_path(assigns(:post_code_electorate_map))
  end

  test "should destroy post_code_electorate_map" do
    assert_difference('PostCodeElectorateMap.count', -1) do
      delete :destroy, id: @post_code_electorate_map
    end

    assert_redirected_to post_code_electorate_maps_path
  end
end
