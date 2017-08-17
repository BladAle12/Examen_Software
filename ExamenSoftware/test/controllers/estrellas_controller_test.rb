require 'test_helper'

class EstrellasControllerTest < ActionController::TestCase
  setup do
    @estrella = estrellas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estrellas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estrella" do
    assert_difference('Estrella.count') do
      post :create, estrella: { Color: @estrella.Color, Estrella: @estrella.Estrella, Localizacion: @estrella.Localizacion, Masa: @estrella.Masa, Tamano: @estrella.Tamano, Volumen: @estrella.Volumen }
    end

    assert_redirected_to estrella_path(assigns(:estrella))
  end

  test "should show estrella" do
    get :show, id: @estrella
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estrella
    assert_response :success
  end

  test "should update estrella" do
    patch :update, id: @estrella, estrella: { Color: @estrella.Color, Estrella: @estrella.Estrella, Localizacion: @estrella.Localizacion, Masa: @estrella.Masa, Tamano: @estrella.Tamano, Volumen: @estrella.Volumen }
    assert_redirected_to estrella_path(assigns(:estrella))
  end

  test "should destroy estrella" do
    assert_difference('Estrella.count', -1) do
      delete :destroy, id: @estrella
    end

    assert_redirected_to estrellas_path
  end
end
