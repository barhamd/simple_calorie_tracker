module ApplicationHelper

  # Returns a full title if no page title is present
  def full_title(page_title)
    base_title = "Simple Calorie Tracker"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
