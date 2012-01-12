ActionView::Base.field_error_proc = Proc.new{|html_tag, instance|
  #"<li class=\"fieldWithErrors\">#{html_tag}</li>"
  html_tag
} 
