require_dependency "ershou/settings/application_controller"

module Ershou
  module Settings

    class TopicsController < ApplicationController
  
      def index
        @topics = Topic.where(:user_id => current_user.id)
        if ['open', 'closed'].include?(params[:state])
          @topics = @topics.where(:state => params[:state])
        else
          @current << settings_topics_path(:state => :all)
        end
        @topics = @topics.page(params[:page]).reverse_order.decorate
      end
      
    end
  end
end
