# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def welcome_text
    str = ""
    if current_user
      str = "Welcome, #{current_user.login} | "
      str += link_to "Logout", logout_path
    else
      str = "#{link_to "Login", login_path} | "
      str += link_to "Signup", signup_path
    end
  end

  def login_sidebar
    if current_user
      render :partial => "layouts/sidebar_login"
    else
      render :partial => "layouts/sidebar"
    end
  end
end
