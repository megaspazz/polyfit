require 'test_helper'

class RegimentsControllerTest < ActionController::TestCase
  setup do
    @regiment = regiments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regiments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regiment" do
    assert_difference('Regiment.count') do
      post :create, regiment: { description: @regiment.description, name: @regiment.name }
    end

    assert_redirected_to regiment_path(assigns(:regiment))
  end

  test "should show regiment" do
    get :show, id: @regiment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regiment
    assert_response :success
  end

  test "should update regiment" do
    patch :update, id: @regiment, regiment: { description: @regiment.description, name: @regiment.name }
    assert_redirected_to regiment_path(assigns(:regiment))
  end

  test "should destroy regiment" do
    assert_difference('Regiment.count', -1) do
      delete :destroy, id: @regiment
    end

    assert_redirected_to regiments_path
  end
end
