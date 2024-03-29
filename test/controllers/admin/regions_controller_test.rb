require 'test_helper'

class Admin::RegionsControllerTest < ActionController::TestCase
  setup do
    @admin_region = admin_regions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_regions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_region" do
    assert_difference('Admin::Region.count') do
      post :create, admin_region: { name: @admin_region.name }
    end

    assert_redirected_to admin_region_path(assigns(:admin_region))
  end

  test "should show admin_region" do
    get :show, id: @admin_region
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_region
    assert_response :success
  end

  test "should update admin_region" do
    patch :update, id: @admin_region, admin_region: { name: @admin_region.name }
    assert_redirected_to admin_region_path(assigns(:admin_region))
  end

  test "should destroy admin_region" do
    assert_difference('Admin::Region.count', -1) do
      delete :destroy, id: @admin_region
    end

    assert_redirected_to admin_regions_path
  end
end
