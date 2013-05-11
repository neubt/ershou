# encoding: utf-8

module Ershou
  class ApplicationController < ::ApplicationController

    respond_to :html, :js
    before_filter :authenticate_user!
    
    helper_method :current_node

    before_filter do
      @nodes = Node.limit(20).decorate
      @current = [ topics_path ]
      drop_page_title("二手市场")
      drop_breadcrumb("二手市场", topics_path)
    end

    protected
      def current_ability
        @current_ability ||= Ability.new(current_user)
      end

      def current_node
        unless @node
          remote_ip = IPAddr.new request.remote_ip || "0.0.0.0"
          Location.all.each do |location|
            prefix = IPAddr.new location.prefix || "0.0.0.0"
            if prefix.include?(remote_ip)
              @node = location.node
              break
            end
          end
        end
        return @node
      end

  end
end
