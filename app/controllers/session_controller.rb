class SessionController < ApplicationController
  def create
    authorize :session
    user = User.get_by_oauth(auth_data)
    session[:user_id] = user.id
    redirect_to :back
  end

  def destroy
    authorize :session
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth_data
    request.env['omniauth.auth']
  end
end
