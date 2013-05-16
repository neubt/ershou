module Ershou
  module ApplicationHelper

    include Twitter::Autolink

    def markdown(text)
      Markdown.new(text, :autolink).to_html.html_safe
    end
    
    def image_tag(source, options={})
      super(source, options) if source.present?
    end
    
  end
end
