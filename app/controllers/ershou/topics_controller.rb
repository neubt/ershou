require_dependency "ershou/application_controller"

module Ershou
  class TopicsController < ApplicationController

    load_and_authorize_resource :class => Topic
    inherit_resources
    
    def show
      @topic = Topic.find(params[:id]).decorate
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @topic }
      end
    end
  
    def create
      @topic = Topic.new(params[:topic])
      @topic.user = current_user
      @topic.remote_ip = request.remote_ip

      respond_to do |format|
        if @topic.save
          format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
          format.json { render json: @topic, status: :created, location: @topic }
        else
          format.html { render action: "new" }
          format.json { render json: @topic.errors, status: :unprocessable_entity }
        end
      end
    end

    protected
      def collection
        @topics = end_of_association_chain.page(params[:page]).reverse_order.decorate
      end
  end
end

