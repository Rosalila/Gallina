require 'test_helper'

class GallinaMembersControllerTest < ActionController::TestCase
  setup do
    @gallina_member = gallina_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallina_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallina_member" do
    assert_difference('GallinaMember.count') do
      post :create, gallina_member: { gallina_id: @gallina_member.gallina_id, user_id: @gallina_member.user_id }
    end

    assert_redirected_to gallina_member_path(assigns(:gallina_member))
  end

  test "should show gallina_member" do
    get :show, id: @gallina_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallina_member
    assert_response :success
  end

  test "should update gallina_member" do
    patch :update, id: @gallina_member, gallina_member: { gallina_id: @gallina_member.gallina_id, user_id: @gallina_member.user_id }
    assert_redirected_to gallina_member_path(assigns(:gallina_member))
  end

  test "should destroy gallina_member" do
    assert_difference('GallinaMember.count', -1) do
      delete :destroy, id: @gallina_member
    end

    assert_redirected_to gallina_members_path
  end
end
