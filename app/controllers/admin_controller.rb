class AdminController < ApplicationController
  before_filter :authorized?
  private
  def authorized?
    unless spree_current_user && spree_current_user.has_spree_role? "admin"
      flash[:error] = "You are not authorized to view that page. Please log in to continue."
      redirect_to spree_login_path
    end
  end
end