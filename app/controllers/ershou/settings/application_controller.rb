require_dependency "ershou/application_controller"

module Ershou
  module Settings
    class ApplicationController < ::Ershou::ApplicationController
      before_filter :authenticate_user!
    end
  end
end
