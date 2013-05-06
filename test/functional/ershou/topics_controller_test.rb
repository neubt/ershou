require 'test_helper'

module Ershou
  class TopicsControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
      @topic = ershou_topics(:one)
      @user = FactoryGirl.create(:user)
      sign_in @user
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:topics)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create topic" do
      assert_difference('Topic.count') do
        post :create, topic: { content: @topic.content, title: @topic.title }
      end
  
      assert_redirected_to topic_path(assigns(:topic))
    end
  
    test "should show topic" do
      get :show, id: @topic
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @topic
      assert_response :success
    end
  
    test "should update topic" do
      put :update, id: @topic, topic: { content: @topic.content, title: @topic.title }
      assert_redirected_to topic_path(assigns(:topic))
    end

    test "should close topic" do
      put :close, id: @topic
      assert_redirected_to topic_path(assigns(:topic))
    end

    test "should open topic" do
      @topic.fire_events(:close)
      put :open, id: @topic
      assert_redirected_to topic_path(assigns(:topic))
    end
  
    test "should destroy topic" do
      assert_difference('Topic.count', -1) do
        delete :destroy, id: @topic
      end
  
      assert_redirected_to topics_path
    end
  end
end
