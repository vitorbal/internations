module ApplicationHelper
  # Wrapper around the link_to method which also sets
  # "active" class if the path equals to the current page
  def menu_link_to(label, path)
    link_to label, path, :class => (current_page?(path) ? "active" : nil)
  end
end
