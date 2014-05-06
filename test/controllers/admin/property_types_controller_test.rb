require 'test_helper'

class Admin::PropertyTypesControllerTest < ActionController::TestCase
  setup do
    @admin_property_type = admin_property_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_property_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_property_type" do
    assert_difference('Admin::PropertyType.count') do
      post :create, admin_property_type: { name: @admin_property_type.name }
    end

    assert_redirected_to admin_property_type_path(assigns(:admin_property_type))
  end

  test "should show admin_property_type" do
    get :show, id: @admin_property_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_property_type
    assert_response :success
  end

  test "should update admin_property_type" do
    patch :update, id: @admin_property_type, admin_property_type: { name: @admin_property_type.name }
    assert_redirected_to admin_property_type_path(assigns(:admin_property_type))
  end

  test "should destroy admin_property_type" do
    assert_difference('Admin::PropertyType.count', -1) do
      delete :destroy, id: @admin_property_type
    end

    assert_redirected_to admin_property_types_path
  end
end
