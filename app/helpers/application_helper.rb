module ApplicationHelper
  def page_title
    "Two Month Me" + (" &mdash; #{@content_for_title}" if @content_for_title).to_s
  end
end
