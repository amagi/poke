require 'test_helper'

class ButtlelistsControllerTest < ActionController::TestCase
  setup do
    @buttlelist = buttlelists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buttlelists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buttlelist" do
    assert_difference('Buttlelist.count') do
      post :create, buttlelist: @buttlelist.attributes
    end

    assert_redirected_to buttlelist_path(assigns(:buttlelist))
  end

  test "should show buttlelist" do
    get :show, id: @buttlelist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buttlelist
    assert_response :success
  end

  test "should update buttlelist" do
    put :update, id: @buttlelist, buttlelist: @buttlelist.attributes
    assert_redirected_to buttlelist_path(assigns(:buttlelist))
  end

  test "should destroy buttlelist" do
    assert_difference('Buttlelist.count', -1) do
      delete :destroy, id: @buttlelist
    end

    assert_redirected_to buttlelists_path
  end
end
