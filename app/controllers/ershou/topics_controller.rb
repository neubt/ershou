require_dependency "ershou/application_controller"

module Ershou
  class TopicsController < ApplicationController

    load_and_authorize_resource :class => Topic
    inherit_resources
    
    def show
      super {
        @topic = resource.decorate
      }
    end
  
    def create
      @topic = build_resource
      @topic.user = current_user
      @topic.remote_ip = request.remote_ip
      super
    end

    def open
      @topic = resource.decorate
      if @topic.state == 'closed'
        @topic.reopen!
      end
      redirect_to @topic
    end

    def close
      @topic = resource.decorate
      if @topic.state == 'open'
        @topic.close!
      end
      redirect_to @topic
    end

    protected
      def collection
        @topics = end_of_association_chain.page(params[:page]).reverse_order.decorate
      end
  end
end

