require 'test_helper'

module Finances
  class DresControllerTest < ActionController::TestCase
    setup do
      @dre = dres(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:dres)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create dre" do
      assert_difference('Dre.count') do
        post :create, dre: @dre.attributes
      end
  
      assert_redirected_to dre_path(assigns(:dre))
    end
  
    test "should show dre" do
      get :show, id: @dre.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @dre.to_param
      assert_response :success
    end
  
    test "should update dre" do
      put :update, id: @dre.to_param, dre: @dre.attributes
      assert_redirected_to dre_path(assigns(:dre))
    end
  
    test "should destroy dre" do
      assert_difference('Dre.count', -1) do
        delete :destroy, id: @dre.to_param
      end
  
      assert_redirected_to dres_path
    end
  end
end
