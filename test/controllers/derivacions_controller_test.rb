require 'test_helper'

class DerivacionsControllerTest < ActionController::TestCase
  setup do
    @derivacion = derivacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derivacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derivacion" do
    assert_difference('Derivacion.count') do
      post :create, derivacion: { observaciones: @derivacion.observaciones }
    end

    assert_redirected_to derivacion_path(assigns(:derivacion))
  end

  test "should show derivacion" do
    get :show, id: @derivacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @derivacion
    assert_response :success
  end

  test "should update derivacion" do
    patch :update, id: @derivacion, derivacion: { observaciones: @derivacion.observaciones }
    assert_redirected_to derivacion_path(assigns(:derivacion))
  end

  test "should destroy derivacion" do
    assert_difference('Derivacion.count', -1) do
      delete :destroy, id: @derivacion
    end

    assert_redirected_to derivacions_path
  end
end
