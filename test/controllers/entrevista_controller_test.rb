require 'test_helper'

class EntrevistaControllerTest < ActionController::TestCase
  setup do
    @entrevistum = entrevista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrevista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrevistum" do
    assert_difference('Entrevistum.count') do
      post :create, entrevistum: { asistencia: @entrevistum.asistencia, tipo: @entrevistum.tipo }
    end

    assert_redirected_to entrevistum_path(assigns(:entrevistum))
  end

  test "should show entrevistum" do
    get :show, id: @entrevistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrevistum
    assert_response :success
  end

  test "should update entrevistum" do
    patch :update, id: @entrevistum, entrevistum: { asistencia: @entrevistum.asistencia, tipo: @entrevistum.tipo }
    assert_redirected_to entrevistum_path(assigns(:entrevistum))
  end

  test "should destroy entrevistum" do
    assert_difference('Entrevistum.count', -1) do
      delete :destroy, id: @entrevistum
    end

    assert_redirected_to entrevista_path
  end
end
