class PagesController < ApplicationController
  
  def link_to_with_current_class(name, options)
    if is_current?(options)
      content_tag :li, h(name), :class => "current"
    else
      content_tag :li, link_to(h(name), options)
    end   
  end
  
end
