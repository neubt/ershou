require 'test_helper'

module Ershou
  class CommentsControllerTest < ActionController::TestCase
    setup do
      @routes = Engine.routes
      @topic = ershou_topics(:one)
      @comment = ershou_comments(:one)
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    test "should create comment" do
      assert_difference('Comment.count') do
        post :create, topic_id: @topic, comment: { content: "Content" }, format: 'js'
      end

      assert_response :success
    end

    test "should destroy comment" do
      assert_difference('Comment.count', -1) do
        delete :destroy, topic_id: @topic, id: @comment, format: 'js'
      end

      assert_response :success
    end
  end
end
