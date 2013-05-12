module Ershou
  class NodeDecorator < Draper::Decorator
    
    include Draper::LazyHelpers
    
    delegate_all
    
    def human_topics_count
      content_tag :span, class: "badge" do
        "#{source.topics.size}"
      end
    end
  end
end