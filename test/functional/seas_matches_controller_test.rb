require 'test_helper'

class SeasMatchesControllerTest < ActionController::TestCase
  setup do
    @seas_match = seas_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seas_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seas_match" do
    assert_difference('SeasMatch.count') do
      post :create, seas_match: @seas_match.attributes
    end

    assert_redirected_to seas_match_path(assigns(:seas_match))
  end

  test "should show seas_match" do
    get :show, id: @seas_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seas_match
    assert_response :success
  end

  test "should update seas_match" do
    put :update, id: @seas_match, seas_match: @seas_match.attributes
    assert_redirected_to seas_match_path(assigns(:seas_match))
  end

  test "should destroy seas_match" do
    assert_difference('SeasMatch.count', -1) do
      delete :destroy, id: @seas_match
    end

    assert_redirected_to seas_matches_path
  end
end
