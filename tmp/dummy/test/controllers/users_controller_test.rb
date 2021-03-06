require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    user_image_holder = user_image_holders(:one)
    @user.user_image_holder = user_image_holder
  end

  #test "should get index" do
  #  get :index
  #  assert_response :success
  #  assert_not_nil assigns(:users)
  #end

  #test "should get new" do
  #  get :new
  #  assert_response :success
  #end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  # Append load_image
  test "should get load_image" do
    #get :load_image, id: @user
    user = User.first
    get :load_image, id: user.user_image_holder.id
    assert_response :success
  end

  #test "should show user" do
  #  get :show, id: @user
  #  assert_response :success
  #end
#
#  test "should get edit" do
#    get :edit, id: @user
#    assert_response :success
#  end
#
#  test "should update user" do
#    patch :update, id: @user, user: { username: @user.username }
#    assert_redirected_to user_path(assigns(:user))
#  end
#
  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
