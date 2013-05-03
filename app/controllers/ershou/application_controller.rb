module Ershou
  class ApplicationController < ::ApplicationController

    before_filter :authenticate_user!

    protected
      def current_ability
        @current_ability ||= Ability.new(current_user)
      end

  end
end
