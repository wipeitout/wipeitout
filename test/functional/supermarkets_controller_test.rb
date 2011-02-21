require 'test_helper'

class SupermarketsControllerTest < ActionController::TestCase
  test "should get show" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supermarkets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supermarket" do
    assert_difference('Supermarket.count') do
      post :create, :supermarket => { }
    end

    assert_redirected_to supermarket_path(assigns(:supermarket))
  end

  test "should show supermarket" do
    get :show, :id => supermarkets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => supermarkets(:one).to_param
    assert_response :success
  end

  test "should update supermarket" do
    put :update, :id => supermarkets(:one).to_param, :supermarket => { }
    assert_redirected_to supermarket_path(assigns(:supermarket))
  end

  test "should destroy supermarket" do
    assert_difference('Supermarket.count', -1) do
      delete :destroy, :id => supermarkets(:one).to_param
    end

    assert_redirected_to supermarkets_path
  end
end
