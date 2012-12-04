# coding: utf-8 

module ApplicationHelper

  def title(title)
    content_for :title do
      title + " - "
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

  def cn(model, attribute=nil)
    if attribute.present?
      t "activerecord.attributes.#{model}.#{attribute}"
    else
      t "activerecord.models.#{model}"
    end
  end

  def current_link(name, url, options={})

    options[:href] = url
    content_tag :li, class: current_page?(url) ? "active" : "" do
      content_tag(:a, name, options)
    end

  end



end
