require 'test_helper'

class PrivaciesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privacies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privacy" do
    assert_difference('Privacy.count') do
      post :create, :privacy => { }
    end

    assert_redirected_to privacy_path(assigns(:privacy))
  end

  test "should show privacy" do
    get :show, :id => privacies(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => privacies(:one).to_param
    assert_response :success
  end

  test "should update privacy" do
    put :update, :id => privacies(:one).to_param, :privacy => { }
    assert_redirected_to privacy_path(assigns(:privacy))
  end

  test "should destroy privacy" do
    assert_difference('Privacy.count', -1) do
      delete :destroy, :id => privacies(:one).to_param
    end

    assert_redirected_to privacies_path
  end
end
