require 'test_helper'

class Salesforce::ProjectsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforce_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Salesforce::Project.count') do
      post :create, :project => { }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, :id => salesforce_projects(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => salesforce_projects(:one).to_param
    assert_response :success
  end

  test "should update project" do
    put :update, :id => salesforce_projects(:one).to_param, :project => { }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Salesforce::Project.count', -1) do
      delete :destroy, :id => salesforce_projects(:one).to_param
    end

    assert_redirected_to salesforce_projects_path
  end
end
