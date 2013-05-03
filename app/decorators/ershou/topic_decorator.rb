module Ershou
  class TopicDecorator < Draper::Decorator
    delegate_all
    decorates_association :user
  end
end