class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize
  before_filter :require_user
  
  delegate :allow?, to: :current_permission
  helper_method :allow?

private

  def require_user
    redirect_to root_url unless current_user
  end
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_permission
    @current_permission ||= Permission.new(current_user)
  end

  def authorize
    if !current_permission.allow?(params[:controller], params[:action])
      redirect_to :controller=>'home', :action => 'nauth', alert: "Not authorized."
    end
  end
end