require 'test_helper'

class Salesforce::AssignmentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforce_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Salesforce::Assignment.count') do
      post :create, :assignment => { }
    end

    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should show assignment" do
    get :show, :id => salesforce_assignments(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salesforce_assignments(:one).to_param
    assert_response :success
  end

  test "should update assignment" do
    put :update, :id => salesforce_assignments(:one).to_param, :assignment => { }
    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should destroy assignment" do
    assert_difference('Salesforce::Assignment.count', -1) do
      delete :destroy, :id => salesforce_assignments(:one).to_param
    end

    assert_redirected_to salesforce_assignments_path
  end
end
