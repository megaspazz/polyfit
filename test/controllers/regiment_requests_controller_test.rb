require 'test_helper'

class RegimentRequestsControllerTest < ActionController::TestCase
  setup do
    @regiment_request = regiment_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regiment_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regiment_request" do
    assert_difference('RegimentRequest.count') do
      post :create, regiment_request: { opt1: @regiment_request.opt1, opt2: @regiment_request.opt2, opt3: @regiment_request.opt3, opt4: @regiment_request.opt4, opt5: @regiment_request.opt5, opt6: @regiment_request.opt6, opt7: @regiment_request.opt7 }
    end

    assert_redirected_to regiment_request_path(assigns(:regiment_request))
  end

  test "should show regiment_request" do
    get :show, id: @regiment_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regiment_request
    assert_response :success
  end

  test "should update regiment_request" do
    patch :update, id: @regiment_request, regiment_request: { opt1: @regiment_request.opt1, opt2: @regiment_request.opt2, opt3: @regiment_request.opt3, opt4: @regiment_request.opt4, opt5: @regiment_request.opt5, opt6: @regiment_request.opt6, opt7: @regiment_request.opt7 }
    assert_redirected_to regiment_request_path(assigns(:regiment_request))
  end

  test "should destroy regiment_request" do
    assert_difference('RegimentRequest.count', -1) do
      delete :destroy, id: @regiment_request
    end

    assert_redirected_to regiment_requests_path
  end
end
