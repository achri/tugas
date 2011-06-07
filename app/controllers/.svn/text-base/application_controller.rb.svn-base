# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  layout "application"

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  include AuthenticatedSystem

  def require_login
    if current_user.nil?
      flash[:error] = "You are not permitted"
      redirect_to login_path
      #render :partial => "sessions/require_login"
    else
      return current_user
    end
  end
end
