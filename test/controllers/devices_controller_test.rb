require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, device: { devinfo_id: @device.devinfo_id, label: @device.label, name: @device.name, property_id: @device.property_id, rental_date: @device.rental_date, return_date: @device.return_date, user_name: @device.user_name }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, id: @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @device
    assert_response :success
  end

  test "should update device" do
    patch :update, id: @device, device: { devinfo_id: @device.devinfo_id, label: @device.label, name: @device.name, property_id: @device.property_id, rental_date: @device.rental_date, return_date: @device.return_date, user_name: @device.user_name }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, id: @device
    end

    assert_redirected_to devices_path
  end
end
