module Ershou
  module ApplicationHelper

    include Twitter::Autolink

    def markdown(text)
      Markdown.new(text, :autolink).to_html.html_safe
    end
  end
end
