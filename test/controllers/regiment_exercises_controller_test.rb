require 'test_helper'

class RegimentExercisesControllerTest < ActionController::TestCase
  setup do
    @regiment_exercise = regiment_exercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regiment_exercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regiment_exercise" do
    assert_difference('RegimentExercise.count') do
      post :create, regiment_exercise: {  }
    end

    assert_redirected_to regiment_exercise_path(assigns(:regiment_exercise))
  end

  test "should show regiment_exercise" do
    get :show, id: @regiment_exercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regiment_exercise
    assert_response :success
  end

  test "should update regiment_exercise" do
    patch :update, id: @regiment_exercise, regiment_exercise: {  }
    assert_redirected_to regiment_exercise_path(assigns(:regiment_exercise))
  end

  test "should destroy regiment_exercise" do
    assert_difference('RegimentExercise.count', -1) do
      delete :destroy, id: @regiment_exercise
    end

    assert_redirected_to regiment_exercises_path
  end
end
