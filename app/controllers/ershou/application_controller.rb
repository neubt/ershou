module Ershou
  class ApplicationController < ::ApplicationController

    before_filter :authenticate_user!

    before_filter do    
      @current = [ topics_path ]
      drop_page_title("二手市场")
      drop_breadcrumb("二手市场", topics_path)
    end

    protected
      def current_ability
        @current_ability ||= Ability.new(current_user)
      end

  end
end
