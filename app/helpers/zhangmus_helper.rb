#coding: utf-8

module ZhangmusHelper

  def current_link(name, url, options={})
    options[:href] = url
    content_tag :li, class: current_page_by_full_path?(url) ? "active" : "" do
      content_tag(:a, name, options)
    end
  end

  def current_header_link(name, url, options={})
    options[:href] = url
    content_tag :li, class: current_page?(url) ? "active" : "" do
      content_tag(:a, name, options)
    end    
  end

  protected

  def current_page_by_full_path?(url)
    if request.request_parameters.size == 0
      url == request.fullpath
    else
      current_page?(url)
    end
    #url == request.fullpath
  end

  

end
