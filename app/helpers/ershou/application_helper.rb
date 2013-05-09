module Ershou
  module ApplicationHelper
    def markdown(text)
      Markdown.new(text, :autolink).to_html.html_safe
    end
  end
end
