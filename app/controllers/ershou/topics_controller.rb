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
      resource.fire_events(:open)
      redirect_to resource
    end

    def close
      resource.fire_events(:close)
      redirect_to resource
    end
    
    def preview
      
    end

    protected
      def collection
        @topics = end_of_association_chain.where(:state => :open).page(params[:page]).reverse_order.decorate
      end
  end
end

