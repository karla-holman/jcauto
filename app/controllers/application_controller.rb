class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_paper_trail_whodunnit

  def user_for_paper_trail
  	(spree_current_user) ? spree_current_user.id : "Public User (not logged in or no email)"
  end

  # ensure user logged in
    def authorized_user?
      unless spree_current_user
        store_location
        flash[:error] = "Please sign in to perform that action."
        redirect_to spree_login_path
      end
    end

    def store_location
      # disallow return to login, logout, signup pages
      authentication_routes = [:spree_signup_path, :spree_login_path, :spree_logout_path, :wished_products_path]
      disallowed_urls = []
      authentication_routes.each do |route|
        if respond_to?(route)
          disallowed_urls << send(route)
        end
      end

      # disallowed_urls.map!{ |url| url[/\/\w+$/] }
      unless disallowed_urls.include?(request.fullpath)
        session['spree_user_return_to'] = request.fullpath.gsub('//', '/')
      end
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
