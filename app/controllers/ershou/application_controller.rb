# encoding: utf-8

module Ershou
  class ApplicationController < ::ApplicationController

    respond_to :html, :js
    helper_method :current_node

    before_filter do
      @nodes = Node.limit(200).decorate
      @current = [ topics_path ]
      drop_page_title("二手市场")
      drop_breadcrumb("二手市场", topics_path)
    end

    protected
      def current_ability
        @current_ability ||= Ability.new(current_user)
      end

      def current_remote_ip
        unless @remote_ip
          if request.env["HTTP_X_FORWARDED_FOR"].present?
            @remote_ip = IPAddr.new request.env["HTTP_X_FORWARDED_FOR"].split(",").first
          else
            @remote_ip = request.remote_ip || "0.0.0.0"
          end
        end
        return @remote_ip
      end

      def current_node
        unless @node
          Location.all.each do |location|
            prefix = IPAddr.new location.prefix || "0.0.0.0"
            if prefix.include?(current_remote_ip)
              @node = location.node
              break
            end
          end
        end
        return @node
      end

  end
end
