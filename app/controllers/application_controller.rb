class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_paper_trail_whodunnit

  def user_for_paper_trail
  	(spree_current_user) ? spree_current_user.id : "Public User (not logged in or no email)"
  end
end
