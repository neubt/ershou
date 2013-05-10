require_dependency "ershou/application_controller"

module Ershou
  class CommentsController < ApplicationController

    load_and_authorize_resource :class => Comment
    inherit_resources
    belongs_to :topic, :parent_class => Topic
    
    def preview
      @comment = Comment.new(params[:comment])
      render :layout => false
    end

    def create
      @comment = build_resource
      @comment.topic = @topic
      @comment.user = current_user
      @comment.remote_ip = request.remote_ip

      super do |success, failure|
        success.js { @comment = @comment.decorate }
        failure.js { render :js => "alert('Error');" }
      end
    end
    
    def destroy
      super do |success, failure|
        failure.js { render :js => "alert('Error');" }
      end
    end

  end
end
