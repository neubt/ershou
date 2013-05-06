require_dependency "ershou/settings/application_controller"

module Ershou
  class Settings::TopicsController < Settings::ApplicationController

    def index
      @topics = Topic.where(:user_id => current_user.id)
    end
    
  end
end
