require 'test_helper'

class AppTypesControllerTest < ActionController::TestCase
  setup do
    @app_type = app_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create app_type" do
    assert_difference('AppType.count') do
      post :create, app_type: { title: @app_type.title }
    end

    assert_redirected_to app_type_path(assigns(:app_type))
  end

  test "should show app_type" do
    get :show, id: @app_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @app_type
    assert_response :success
  end

  test "should update app_type" do
    patch :update, id: @app_type, app_type: { title: @app_type.title }
    assert_redirected_to app_type_path(assigns(:app_type))
  end

  test "should destroy app_type" do
    assert_difference('AppType.count', -1) do
      delete :destroy, id: @app_type
    end

    assert_redirected_to app_types_path
  end
end
