module ApplicationHelper
  def nav_link(name, path, css = "")
    css += if request.path.include?(path)
      " active" 
    else
       ""
    end
    content_tag :li, link_to(name, path), :class => css
  end

  def decide_css_class
    css_class = "team" if controller.class == MembersController
  end
end
