require_dependency "ershou/application_controller"

module Ershou
  class CommentsController < ApplicationController

    include Twitter::Extractor

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
      @comment.remote_ip = current_remote_ip.to_s

      super do |success, failure|
        success.js do
          @comment = @comment.decorate
        end
        failure.js { render :js => "alert('Error');" }
      end
    end
    
    def update
      super do |success, failure|
        success.html { redirect_to @comment.topic }
      end
    end
    
    def destroy
      super do |success, failure|
        success.html { redirect_to @comment.topic }
        failure.js { render :js => "alert('Error');" }
      end
    end

  end
end
