class AdminController < ApplicationController
  before_filter :store_location
  before_filter :authorized?
  
  private
  def authorized?
    unless spree_current_user && (spree_current_user.has_spree_role? "admin")
      flash[:error] = "You are not authorized to view that page. Please log in to continue."
      redirect_to spree_login_path
    end
  end

  def store_location
	  # store last url as long as it isn't a /users path
	  session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
	end

	def after_sign_in_path_for(resource)
	  session[:previous_url] || root_path
	end

end