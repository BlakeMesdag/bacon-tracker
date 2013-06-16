require 'test_helper'

class BaconsControllerTest < ActionController::TestCase
  setup do
    @bacon = bacons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bacons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bacon" do
    assert_difference('Bacon.count') do
      post :create, bacon: { create: @bacon.create, destroy: @bacon.destroy, index: @bacon.index, show: @bacon.show, update: @bacon.update }
    end

    assert_redirected_to bacon_path(assigns(:bacon))
  end

  test "should show bacon" do
    get :show, id: @bacon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bacon
    assert_response :success
  end

  test "should update bacon" do
    patch :update, id: @bacon, bacon: { create: @bacon.create, destroy: @bacon.destroy, index: @bacon.index, show: @bacon.show, update: @bacon.update }
    assert_redirected_to bacon_path(assigns(:bacon))
  end

  test "should destroy bacon" do
    assert_difference('Bacon.count', -1) do
      delete :destroy, id: @bacon
    end

    assert_redirected_to bacons_path
  end
end
