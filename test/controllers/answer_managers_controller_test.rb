require 'test_helper'

class AnswerManagersControllerTest < ActionController::TestCase
  setup do
    @answer_manager = answer_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_manager" do
    assert_difference('AnswerManager.count') do
      post :create, answer_manager: { AnswerTracker: @answer_manager.AnswerTracker, CustomAnswers: @answer_manager.CustomAnswers, DefaultAnswers: @answer_manager.DefaultAnswers }
    end

    assert_redirected_to answer_manager_path(assigns(:answer_manager))
  end

  test "should show answer_manager" do
    get :show, id: @answer_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_manager
    assert_response :success
  end

  test "should update answer_manager" do
    patch :update, id: @answer_manager, answer_manager: { AnswerTracker: @answer_manager.AnswerTracker, CustomAnswers: @answer_manager.CustomAnswers, DefaultAnswers: @answer_manager.DefaultAnswers }
    assert_redirected_to answer_manager_path(assigns(:answer_manager))
  end

  test "should destroy answer_manager" do
    assert_difference('AnswerManager.count', -1) do
      delete :destroy, id: @answer_manager
    end

    assert_redirected_to answer_managers_path
  end
end
