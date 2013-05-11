require_dependency "ershou/settings/application_controller"

module Ershou
  class Settings::CommentsController < Settings::ApplicationController
    
    def index
      @comments = Comment.where(:user_id => current_user.id)
      @comments = @comments.page(params[:page]).reverse_order.decorate
    end
    
  end
end
