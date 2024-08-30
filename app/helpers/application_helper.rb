module ApplicationHelper
  def head_title
    content_for(:title).present? ? "#{t(".base_title")} | #{content_for(:title)}" : t(".base_title")
  end
end
