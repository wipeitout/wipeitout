require 'test_helper'

class QantasSupportersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qantas_supporters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qantas_supporter" do
    assert_difference('QantasSupporter.count') do
      post :create, :qantas_supporter => { }
    end

    assert_redirected_to qantas_supporter_path(assigns(:qantas_supporter))
  end

  test "should show qantas_supporter" do
    get :show, :id => qantas_supporters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => qantas_supporters(:one).to_param
    assert_response :success
  end

  test "should update qantas_supporter" do
    put :update, :id => qantas_supporters(:one).to_param, :qantas_supporter => { }
    assert_redirected_to qantas_supporter_path(assigns(:qantas_supporter))
  end

  test "should destroy qantas_supporter" do
    assert_difference('QantasSupporter.count', -1) do
      delete :destroy, :id => qantas_supporters(:one).to_param
    end

    assert_redirected_to qantas_supporters_path
  end
end
