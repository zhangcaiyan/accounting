# coding: utf-8 

module DeviseHelper

  def devise_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    html = <<-HTML
    <span class="error_messages error_notice">
      <ul>#{messages}</ul>
    </span>
    HTML

    html.html_safe
  end

end
