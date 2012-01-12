# coding: utf-8 

module ApplicationHelper

  def title(title)
    content_for :head do
      content_tag "title", "#{title}-我的账本"
    end
  end

  def js(*js)
    content_for :head do
      javascript_include_tag *js
    end
  end

  def css(*css)
    content_for :head do
      stylesheet_link_tag *css
    end
  end
end
