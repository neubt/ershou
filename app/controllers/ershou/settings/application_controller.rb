require_dependency "ershou/application_controller"

module Ershou
  class Settings::ApplicationController < ApplicationController
    before_filter :authenticate_user!
  end
end
