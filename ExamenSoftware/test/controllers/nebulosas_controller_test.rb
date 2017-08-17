require 'test_helper'

class NebulosasControllerTest < ActionController::TestCase
  setup do
    @nebulosa = nebulosas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nebulosas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nebulosa" do
    assert_difference('Nebulosa.count') do
      post :create, nebulosa: { Nebulosa: @nebulosa.Nebulosa, TipoNebulosa: @nebulosa.TipoNebulosa }
    end

    assert_redirected_to nebulosa_path(assigns(:nebulosa))
  end

  test "should show nebulosa" do
    get :show, id: @nebulosa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nebulosa
    assert_response :success
  end

  test "should update nebulosa" do
    patch :update, id: @nebulosa, nebulosa: { Nebulosa: @nebulosa.Nebulosa, TipoNebulosa: @nebulosa.TipoNebulosa }
    assert_redirected_to nebulosa_path(assigns(:nebulosa))
  end

  test "should destroy nebulosa" do
    assert_difference('Nebulosa.count', -1) do
      delete :destroy, id: @nebulosa
    end

    assert_redirected_to nebulosas_path
  end
end
