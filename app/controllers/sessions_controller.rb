class SessionsController < ApplicationController
  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    #session[:provider] = user.provider
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
  end
end
