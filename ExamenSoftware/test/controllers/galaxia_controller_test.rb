require 'test_helper'

class GalaxiaControllerTest < ActionController::TestCase
  setup do
    @galaxium = galaxia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galaxia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galaxium" do
    assert_difference('Galaxium.count') do
      post :create, galaxium: { CantidadEstrellas: @galaxium.CantidadEstrellas, CantidadPlanetas: @galaxium.CantidadPlanetas, Diametro: @galaxium.Diametro, Galaxia: @galaxium.Galaxia }
    end

    assert_redirected_to galaxium_path(assigns(:galaxium))
  end

  test "should show galaxium" do
    get :show, id: @galaxium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galaxium
    assert_response :success
  end

  test "should update galaxium" do
    patch :update, id: @galaxium, galaxium: { CantidadEstrellas: @galaxium.CantidadEstrellas, CantidadPlanetas: @galaxium.CantidadPlanetas, Diametro: @galaxium.Diametro, Galaxia: @galaxium.Galaxia }
    assert_redirected_to galaxium_path(assigns(:galaxium))
  end

  test "should destroy galaxium" do
    assert_difference('Galaxium.count', -1) do
      delete :destroy, id: @galaxium
    end

    assert_redirected_to galaxia_path
  end
end
