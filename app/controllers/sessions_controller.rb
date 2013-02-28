class SessionsController < ApplicationController
  def create
      user = User.from_omniauth(env["omniauth.auth"])
      session[:user_id] = user.id
      if user.authorized?
         redirect_to :controller=>'events', :action => 'index'
      else
        redirect_to root_url
      end
  end

  def destroy
      session[:user_id] = nil
      redirect_to root_url
  end
end
