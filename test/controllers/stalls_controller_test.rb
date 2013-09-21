require 'test_helper'

class StallsControllerTest < ActionController::TestCase
  setup do
    @stall = stalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stall" do
    assert_difference('Stall.count') do
      post :create, stall: { name: @stall.name, qr_code: @stall.qr_code, uuid: @stall.uuid, write_hash: @stall.write_hash }
    end

    assert_redirected_to stall_path(assigns(:stall))
  end

  test "should show stall" do
    get :show, id: @stall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stall
    assert_response :success
  end

  test "should update stall" do
    patch :update, id: @stall, stall: { name: @stall.name, qr_code: @stall.qr_code, uuid: @stall.uuid, write_hash: @stall.write_hash }
    assert_redirected_to stall_path(assigns(:stall))
  end

  test "should destroy stall" do
    assert_difference('Stall.count', -1) do
      delete :destroy, id: @stall
    end

    assert_redirected_to stalls_path
  end
end
