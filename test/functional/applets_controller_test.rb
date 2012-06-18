require 'test_helper'

class AppletsControllerTest < ActionController::TestCase
  setup do
    @applet = applets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applet" do
    assert_difference('Applet.count') do
      post :create, :applet => { :content => @applet.content, :javascript => @applet.javascript, :style => @applet.style, :title => @applet.title }
    end

    assert_redirected_to applet_path(assigns(:applet))
  end

  test "should show applet" do
    get :show, :id => @applet
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @applet
    assert_response :success
  end

  test "should update applet" do
    put :update, :id => @applet, :applet => { :content => @applet.content, :javascript => @applet.javascript, :style => @applet.style, :title => @applet.title }
    assert_redirected_to applet_path(assigns(:applet))
  end

  test "should destroy applet" do
    assert_difference('Applet.count', -1) do
      delete :destroy, :id => @applet
    end

    assert_redirected_to applets_path
  end
end
