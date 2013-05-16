require_dependency "ershou/admin/application_controller"

module Ershou
  class Admin::LocationsController < Admin::ApplicationController
    load_and_authorize_resource :class => Location
    inherit_resources
  end
end
