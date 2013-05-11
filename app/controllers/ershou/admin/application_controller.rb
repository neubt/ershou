require_dependency "ershou/application_controller"

module Ershou
  class Admin::ApplicationController < ApplicationController
    before_filter :authenticate_user!
  end
end
