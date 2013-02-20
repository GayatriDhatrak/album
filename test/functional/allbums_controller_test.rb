require 'test_helper'

class AllbumsControllerTest < ActionController::TestCase
  setup do
    @allbum = allbums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allbums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allbum" do
    assert_difference('Allbum.count') do
      post :create, allbum: { description: @allbum.description, name: @allbum.name }
    end

    assert_redirected_to allbum_path(assigns(:allbum))
  end

  test "should show allbum" do
    get :show, id: @allbum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allbum
    assert_response :success
  end

  test "should update allbum" do
    put :update, id: @allbum, allbum: { description: @allbum.description, name: @allbum.name }
    assert_redirected_to allbum_path(assigns(:allbum))
  end

  test "should destroy allbum" do
    assert_difference('Allbum.count', -1) do
      delete :destroy, id: @allbum
    end

    assert_redirected_to allbums_path
  end
end
