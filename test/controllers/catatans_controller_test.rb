require 'test_helper'

class CatatansControllerTest < ActionController::TestCase
  setup do
    @catatan = catatans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catatans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catatan" do
    assert_difference('Catatan.count') do
      post :create, catatan: { note: @catatan.note, title: @catatan.title }
    end

    assert_redirected_to catatan_path(assigns(:catatan))
  end

  test "should show catatan" do
    get :show, id: @catatan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catatan
    assert_response :success
  end

  test "should update catatan" do
    patch :update, id: @catatan, catatan: { note: @catatan.note, title: @catatan.title }
    assert_redirected_to catatan_path(assigns(:catatan))
  end

  test "should destroy catatan" do
    assert_difference('Catatan.count', -1) do
      delete :destroy, id: @catatan
    end

    assert_redirected_to catatans_path
  end
end
