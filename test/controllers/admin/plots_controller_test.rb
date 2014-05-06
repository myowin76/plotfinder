require 'test_helper'

class Admin::PlotsControllerTest < ActionController::TestCase
  setup do
    @admin_plot = admin_plots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_plots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_plot" do
    assert_difference('Admin::Plot.count') do
      post :create, admin_plot: { address1: @admin_plot.address1, address2: @admin_plot.address2, features_id: @admin_plot.features_id, postcode: @admin_plot.postcode, price: @admin_plot.price, property_types_id: @admin_plot.property_types_id, regions_id: @admin_plot.regions_id, title: @admin_plot.title, town: @admin_plot.town }
    end

    assert_redirected_to admin_plot_path(assigns(:admin_plot))
  end

  test "should show admin_plot" do
    get :show, id: @admin_plot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_plot
    assert_response :success
  end

  test "should update admin_plot" do
    patch :update, id: @admin_plot, admin_plot: { address1: @admin_plot.address1, address2: @admin_plot.address2, features_id: @admin_plot.features_id, postcode: @admin_plot.postcode, price: @admin_plot.price, property_types_id: @admin_plot.property_types_id, regions_id: @admin_plot.regions_id, title: @admin_plot.title, town: @admin_plot.town }
    assert_redirected_to admin_plot_path(assigns(:admin_plot))
  end

  test "should destroy admin_plot" do
    assert_difference('Admin::Plot.count', -1) do
      delete :destroy, id: @admin_plot
    end

    assert_redirected_to admin_plots_path
  end
end
