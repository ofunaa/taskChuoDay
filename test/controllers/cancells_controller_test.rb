require 'test_helper'

class CancellsControllerTest < ActionController::TestCase
  setup do
    @cancell = cancells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cancells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cancell" do
    assert_difference('Cancell.count') do
      post :create, cancell: {  }
    end

    assert_redirected_to cancell_path(assigns(:cancell))
  end

  test "should show cancell" do
    get :show, id: @cancell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cancell
    assert_response :success
  end

  test "should update cancell" do
    patch :update, id: @cancell, cancell: {  }
    assert_redirected_to cancell_path(assigns(:cancell))
  end

  test "should destroy cancell" do
    assert_difference('Cancell.count', -1) do
      delete :destroy, id: @cancell
    end

    assert_redirected_to cancells_path
  end
end
