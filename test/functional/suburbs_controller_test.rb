require 'test_helper'

class SuburbsControllerTest < ActionController::TestCase
  setup do
    @suburb = suburbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suburbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suburb" do
    assert_difference('Suburb.count') do
      post :create, suburb: @suburb.attributes
    end

    assert_redirected_to suburb_path(assigns(:suburb))
  end

  test "should show suburb" do
    get :show, id: @suburb.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suburb.to_param
    assert_response :success
  end

  test "should update suburb" do
    put :update, id: @suburb.to_param, suburb: @suburb.attributes
    assert_redirected_to suburb_path(assigns(:suburb))
  end

  test "should destroy suburb" do
    assert_difference('Suburb.count', -1) do
      delete :destroy, id: @suburb.to_param
    end

    assert_redirected_to suburbs_path
  end
end
