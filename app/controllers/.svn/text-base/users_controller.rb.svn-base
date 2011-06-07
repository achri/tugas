class UsersController < ApplicationController
  before_filter :require_login, :only => [:show, :edit, :update]
  before_filter :init_app, :only => [:show, :edit, :update]
  
  # Be sure to include AuthenticationSystem in Application Controller instead
  #include AuthenticatedSystem
  

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    # plugins recaptcha validation
    logout_keeping_session!
    @user = User.new(params[:user])
    if verify_recaptcha
      success = @user && @user.save
      if success && @user.errors.empty?
        # plugin actionmailer
        UserMailer.deliver_signup_notification(@user)
        redirect_back_or_default('/')
        flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
      else
        flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
        render :action => 'new'
      end
    else
      flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
      render :action => 'new'
    end
  end

  def activate
    logout_keeping_session!
    user = User.find_by_activation_code(params[:activation_code]) unless params[:activation_code].blank?
    case
    when (!params[:activation_code].blank?) && user && !user.active?
      user.activate!
      flash[:notice] = "Signup complete! Please sign in to continue."
      redirect_to '/login'
    when params[:activation_code].blank?
      flash[:error] = "The activation code was missing.  Please follow the URL from your email."
      redirect_back_or_default('/')
    else 
      flash[:error]  = "We couldn't find a user with that activation code -- check your email? Or maybe you've already activated -- try signing in."
      redirect_back_or_default('/')
    end
  end

  def show
  end

  def edit
  end

  def update
    if verify_recaptcha
      if @user.update_attributes(params[:user])
        flash[:notice] = "User was successfully updated.<br />"
        redirect_to(user_path(current_user.id))
      else
        flash[:error] = "User failed to update.<br />"
        render :action => "edit"
      end
    else
      flash[:error] = "There was an error with the recaptcha code below. Please re-enter the code and click submit."
      render :action => 'edit'
    end
  end

  def home
  end

  def init_app
    @user = User.find(params[:id])
  end
end
