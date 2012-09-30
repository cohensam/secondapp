require 'test_helper'

class LoginKeysControllerTest < ActionController::TestCase
  setup do
    @login_key = login_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_key" do
    assert_difference('LoginKey.count') do
      post :create, login_key: @login_key.attributes
    end

    assert_redirected_to login_key_path(assigns(:login_key))
  end

  test "should show login_key" do
    get :show, id: @login_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_key
    assert_response :success
  end

  test "should update login_key" do
    put :update, id: @login_key, login_key: @login_key.attributes
    assert_redirected_to login_key_path(assigns(:login_key))
  end

  test "should destroy login_key" do
    assert_difference('LoginKey.count', -1) do
      delete :destroy, id: @login_key
    end

    assert_redirected_to login_keys_path
  end
end
