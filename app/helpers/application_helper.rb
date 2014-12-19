module ApplicationHelper

  def active_link_to(options = {}, html_options = {}, &block)
    active_class = html_options[:active] || "active"
    html_options.delete(:active)
    html_options[:class] = "#{html_options[:class]} #{active_class}" if current_page?(options)

  end

  def tag_to_img(tag)
    image_tag ProjectTag::IMG[0][tag], title: tag, alt: tag
  end
end
