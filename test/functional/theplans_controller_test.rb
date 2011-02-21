require 'test_helper'

class TheplansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theplans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theplan" do
    assert_difference('Theplan.count') do
      post :create, :theplan => { }
    end

    assert_redirected_to theplan_path(assigns(:theplan))
  end

  test "should show theplan" do
    get :show, :id => theplans(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => theplans(:one).to_param
    assert_response :success
  end

  test "should update theplan" do
    put :update, :id => theplans(:one).to_param, :theplan => { }
    assert_redirected_to theplan_path(assigns(:theplan))
  end

  test "should destroy theplan" do
    assert_difference('Theplan.count', -1) do
      delete :destroy, :id => theplans(:one).to_param
    end

    assert_redirected_to theplans_path
  end
end
