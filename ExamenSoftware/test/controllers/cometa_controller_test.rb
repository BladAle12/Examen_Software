require 'test_helper'

class CometaControllerTest < ActionController::TestCase
  setup do
    @cometum = cometa(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cometa)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cometum" do
    assert_difference('Cometum.count') do
      post :create, cometum: { Color: @cometum.Color, Cometa: @cometum.Cometa, Stela: @cometum.Stela, Tamano: @cometum.Tamano, Trayectoria: @cometum.Trayectoria }
    end

    assert_redirected_to cometum_path(assigns(:cometum))
  end

  test "should show cometum" do
    get :show, id: @cometum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cometum
    assert_response :success
  end

  test "should update cometum" do
    patch :update, id: @cometum, cometum: { Color: @cometum.Color, Cometa: @cometum.Cometa, Stela: @cometum.Stela, Tamano: @cometum.Tamano, Trayectoria: @cometum.Trayectoria }
    assert_redirected_to cometum_path(assigns(:cometum))
  end

  test "should destroy cometum" do
    assert_difference('Cometum.count', -1) do
      delete :destroy, id: @cometum
    end

    assert_redirected_to cometa_path
  end
end
