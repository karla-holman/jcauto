module ApplicationHelper
	# renders hidden field and link to remove record using nested_attributes
  def link_to_icon_remove_fields(f)
    url = f.object ? [:admin, f.object] : '#'
    link_to_with_icon('delete', '', url, class: "spree_remove_fields btn btn-sm btn-danger", data: {action: 'remove'}, title: Spree.t(:remove)) + f.hidden_field(:_destroy)
  end

	def link_to_with_icon(icon_name, text, url, options = {})
    options[:class] = (options[:class].to_s + " icon-link with-tip action-#{icon_name}").strip
    options[:class] += ' no-text' if options[:no_text]
    options[:title] = text if options[:no_text]
    text = options[:no_text] ? '' : raw("<span class='text'>#{text}</span>")
    options.delete(:no_text)
    if icon_name
      icon = content_tag(:span, '', class: "icon icon-#{icon_name}")
      text.insert(0, icon + ' ')
    end
    link_to(text.html_safe, url, options)
  end
end
