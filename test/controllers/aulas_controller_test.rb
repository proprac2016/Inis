require 'test_helper'

class AulasControllerTest < ActionController::TestCase
  setup do
    @aula = aulas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aulas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aula" do
    assert_difference('Aula.count') do
      post :create, aula: { nombre: @aula.nombre }
    end

    assert_redirected_to aula_path(assigns(:aula))
  end

  test "should show aula" do
    get :show, id: @aula
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aula
    assert_response :success
  end

  test "should update aula" do
    patch :update, id: @aula, aula: { nombre: @aula.nombre }
    assert_redirected_to aula_path(assigns(:aula))
  end

  test "should destroy aula" do
    assert_difference('Aula.count', -1) do
      delete :destroy, id: @aula
    end

    assert_redirected_to aulas_path
  end
end
