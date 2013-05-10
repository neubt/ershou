module Ershou
  class TopicDecorator < Draper::Decorator

    include Draper::LazyHelpers

    delegate_all
    decorates_association :user

    def human_node_name
      if source.node
        content_tag :span, class: :label do
          source.node.name
        end
      end
    end

    def human_state_name

      html_classes = {
        :open   => "label label-info",
        :closed => "label",
      }

      content_tag :span, class: html_classes[source.state_name] do
        source.human_state_name
      end
    end

  end
end