module ApplicationHelper
  # Menu helper which wraps a <li> tag around a link_to.
  # Also sets the "active" class if the path equals to the current page
  def menu_link_to(label, path)
    classString = current_page?(path) ? "active" : ""
    result = "<li class='#{classString}'>" + link_to(label, path) + "</li>"

    result.html_safe
  end
end
