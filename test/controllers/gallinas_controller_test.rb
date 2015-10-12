require 'test_helper'

class GallinasControllerTest < ActionController::TestCase
  setup do
    @gallina = gallinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallina" do
    assert_difference('Gallina.count') do
      post :create, gallina: { description: @gallina.description, name: @gallina.name }
    end

    assert_redirected_to gallina_path(assigns(:gallina))
  end

  test "should show gallina" do
    get :show, id: @gallina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallina
    assert_response :success
  end

  test "should update gallina" do
    patch :update, id: @gallina, gallina: { description: @gallina.description, name: @gallina.name }
    assert_redirected_to gallina_path(assigns(:gallina))
  end

  test "should destroy gallina" do
    assert_difference('Gallina.count', -1) do
      delete :destroy, id: @gallina
    end

    assert_redirected_to gallinas_path
  end
end
