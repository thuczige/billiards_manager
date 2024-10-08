module ApplicationHelper
  def page_title
    base_title = t("layouts.application.base_title")
    content_for(:title).present? ? "#{base_title} | #{content_for(:title)}" : base_title
  end
end
