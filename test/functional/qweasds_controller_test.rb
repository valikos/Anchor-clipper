require 'test_helper'

class QweasdsControllerTest < ActionController::TestCase
  setup do
    @qweasd = qweasds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qweasds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qweasd" do
    assert_difference('Qweasd.count') do
      post :create, qweasd: {  }
    end

    assert_redirected_to qweasd_path(assigns(:qweasd))
  end

  test "should show qweasd" do
    get :show, id: @qweasd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qweasd
    assert_response :success
  end

  test "should update qweasd" do
    put :update, id: @qweasd, qweasd: {  }
    assert_redirected_to qweasd_path(assigns(:qweasd))
  end

  test "should destroy qweasd" do
    assert_difference('Qweasd.count', -1) do
      delete :destroy, id: @qweasd
    end

    assert_redirected_to qweasds_path
  end
end
