require 'test_helper'

class MemberOfParliamentsControllerTest < ActionController::TestCase
  setup do
    @member_of_parliament = member_of_parliaments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_of_parliaments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_of_parliament" do
    assert_difference('MemberOfParliament.count') do
      post :create, member_of_parliament: { electorate_id: @member_of_parliament.electorate_id, email: @member_of_parliament.email, first_name: @member_of_parliament.first_name, last_name: @member_of_parliament.last_name }
    end

    assert_redirected_to member_of_parliament_path(assigns(:member_of_parliament))
  end

  test "should show member_of_parliament" do
    get :show, id: @member_of_parliament
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member_of_parliament
    assert_response :success
  end

  test "should update member_of_parliament" do
    patch :update, id: @member_of_parliament, member_of_parliament: { electorate_id: @member_of_parliament.electorate_id, email: @member_of_parliament.email, first_name: @member_of_parliament.first_name, last_name: @member_of_parliament.last_name }
    assert_redirected_to member_of_parliament_path(assigns(:member_of_parliament))
  end

  test "should destroy member_of_parliament" do
    assert_difference('MemberOfParliament.count', -1) do
      delete :destroy, id: @member_of_parliament
    end

    assert_redirected_to member_of_parliaments_path
  end
end
