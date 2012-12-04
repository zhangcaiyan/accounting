#coding: utf-8

module ZhangmusHelper

  def current_link(name, url, options={})

    options[:href] = url
    content_tag :li, class: current_page?(url) ? "active" : "" do
      content_tag(:a, name, options)
    end

  end

  protected

  def current_page?(url)
    if url == request.fullpath
      true
    else
      false
    end
  end

end
