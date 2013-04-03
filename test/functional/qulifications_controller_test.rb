require 'test_helper'

class QulificationsControllerTest < ActionController::TestCase
  setup do
    @qulification = qulifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qulifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qulification" do
    assert_difference('Qulification.count') do
      post :create, qulification: @qulification.attributes
    end

    assert_redirected_to qulification_path(assigns(:qulification))
  end

  test "should show qulification" do
    get :show, id: @qulification.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qulification.to_param
    assert_response :success
  end

  test "should update qulification" do
    put :update, id: @qulification.to_param, qulification: @qulification.attributes
    assert_redirected_to qulification_path(assigns(:qulification))
  end

  test "should destroy qulification" do
    assert_difference('Qulification.count', -1) do
      delete :destroy, id: @qulification.to_param
    end

    assert_redirected_to qulifications_path
  end
end
