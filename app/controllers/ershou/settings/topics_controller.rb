require_dependency "ershou/settings/application_controller"

module Ershou
  class Settings::TopicsController < Settings::ApplicationController

    def index
      @topics = Topic.where(:user_id => current_user.id)
      @topics = @topics.where(:state => params[:state]) if ['open', 'closed'].include?(params[:state])
      @topics = @topics.page(params[:page]).reverse_order.decorate
    end
    
  end
end
