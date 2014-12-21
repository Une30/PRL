require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { BSc_education: @profile.BSc_education, BSc_thesis: @profile.BSc_thesis, MSc_education: @profile.MSc_education, MSc_thesis: @profile.MSc_thesis, alumnus: @profile.alumnus, entrance_year: @profile.entrance_year, graduation_year: @profile.graduation_year, homepage: @profile.homepage, isAdmin: @profile.isAdmin, phD_education: @profile.phD_education, phD_thesis: @profile.phD_thesis }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { BSc_education: @profile.BSc_education, BSc_thesis: @profile.BSc_thesis, MSc_education: @profile.MSc_education, MSc_thesis: @profile.MSc_thesis, alumnus: @profile.alumnus, entrance_year: @profile.entrance_year, graduation_year: @profile.graduation_year, homepage: @profile.homepage, isAdmin: @profile.isAdmin, phD_education: @profile.phD_education, phD_thesis: @profile.phD_thesis }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
