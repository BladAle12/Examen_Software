require 'test_helper'

class AsteroidesControllerTest < ActionController::TestCase
  setup do
    @asteroide = asteroides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asteroides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asteroide" do
    assert_difference('Asteroide.count') do
      post :create, asteroide: { Asteroide: @asteroide.Asteroide, Tamano: @asteroide.Tamano }
    end

    assert_redirected_to asteroide_path(assigns(:asteroide))
  end

  test "should show asteroide" do
    get :show, id: @asteroide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asteroide
    assert_response :success
  end

  test "should update asteroide" do
    patch :update, id: @asteroide, asteroide: { Asteroide: @asteroide.Asteroide, Tamano: @asteroide.Tamano }
    assert_redirected_to asteroide_path(assigns(:asteroide))
  end

  test "should destroy asteroide" do
    assert_difference('Asteroide.count', -1) do
      delete :destroy, id: @asteroide
    end

    assert_redirected_to asteroides_path
  end
end
