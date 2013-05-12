require_dependency "ershou/application_controller"

module Ershou
  class TopicsController < ApplicationController

    load_and_authorize_resource :class => Topic
    inherit_resources
    
    def show
      super {
        @topic = resource.decorate
        if current_user
          @topic.mark_as_read! :for => current_user
        end
      }
    end
  
    def create
      @topic = build_resource
      @topic.user = current_user
      @topic.remote_ip = current_remote_ip.to_s
      @topic.node = current_node
      super
    end

    def open
      resource.fire_events(:open)
      redirect_to resource
    end

    def close
      resource.fire_events(:close)
      redirect_to resource
    end
    
    def preview
      @topic = Topic.new(params[:topic])
      render :layout => false
    end

    protected
      def collection
        @topics = end_of_association_chain.where(:state => :open).page(params[:page]).reverse_order.decorate
      end
  end
end

