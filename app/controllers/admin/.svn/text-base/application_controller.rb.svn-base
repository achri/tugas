# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class Admin::ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  layout "application"
  include AuthenticatedSystem

  def require_admin_login
    #if current_user.nil? || current_user.is_admin?
    if current_user.nil?
      flash[:error] = "Only Admin is permitted"
      redirect_to login_path
      #render :partial => "sessions/require_login"
    else
      return current_user
    end
  end
end
