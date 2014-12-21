require 'test_helper'

class AbstractFilesControllerTest < ActionController::TestCase
  setup do
    @abstract_file = abstract_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abstract_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abstract_file" do
    assert_difference('AbstractFile.count') do
      post :create, abstract_file: { project_id: @abstract_file.project_id }
    end

    assert_redirected_to abstract_file_path(assigns(:abstract_file))
  end

  test "should show abstract_file" do
    get :show, id: @abstract_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abstract_file
    assert_response :success
  end

  test "should update abstract_file" do
    patch :update, id: @abstract_file, abstract_file: { project_id: @abstract_file.project_id }
    assert_redirected_to abstract_file_path(assigns(:abstract_file))
  end

  test "should destroy abstract_file" do
    assert_difference('AbstractFile.count', -1) do
      delete :destroy, id: @abstract_file
    end

    assert_redirected_to abstract_files_path
  end
end
