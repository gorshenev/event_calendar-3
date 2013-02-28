require 'test_helper'

class AvailableUsersControllerTest < ActionController::TestCase
  setup do
    @available_user = available_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:available_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available_user" do
    assert_difference('AvailableUser.count') do
      post :create, available_user: { event_id: @available_user.event_id, name: @available_user.name, user_id: @available_user.user_id, user_name: @available_user.user_name }
    end

    assert_redirected_to available_user_path(assigns(:available_user))
  end

  test "should show available_user" do
    get :show, id: @available_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available_user
    assert_response :success
  end

  test "should update available_user" do
    put :update, id: @available_user, available_user: { event_id: @available_user.event_id, name: @available_user.name, user_id: @available_user.user_id, user_name: @available_user.user_name }
    assert_redirected_to available_user_path(assigns(:available_user))
  end

  test "should destroy available_user" do
    assert_difference('AvailableUser.count', -1) do
      delete :destroy, id: @available_user
    end

    assert_redirected_to available_users_path
  end
end
