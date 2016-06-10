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

  def render_title
    return @title if defined?(@title)
    "JC Auto Restoration"
  end

  def sortable(column, action, title = nil)
    title ||= column.titleize

    # Add class to current sort column with direction
    arrow = (column == sort_column(action)) ? " <span class='glyphicon " + (sort_direction == "asc" ? "glyphicon-chevron-up" : "glyphicon-chevron-down") + "'></span>" : ""

    # If this column is clicked and current direction is asc, switch direction
    direction = (column == sort_column(action) && sort_direction == "asc") ? "desc" : "asc"

    # return link to sort
    link_to (title + arrow).html_safe, :sort => column, :direction => direction 
  end

  def sort_column(action)
    case action
      when "customer"
        (Customer.column_names.include?(params[:sort]) ? params[:sort] : "full_name")
      when "contact"
        (Contact.column_names.include?(params[:sort]) ? params[:sort] : "date")
      else #default sort by name
        (action.singularize.classify.constantize.column_names.include?(params[:sort]) ? params[:sort] : "name")
    end
  end

  def sort_direction
    # check that passed params are secure
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end
end
