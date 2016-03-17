class SessionController < ApplicationController
  def create
    user = User.get_by_oauth(auth_data)
    session[:user_id] = user.id
    redirect_to :back
  end

  def destroy
    session[:user_id] = nil
    redirect_to :back
  end

  private

  def auth_data
    request.env['omniauth.auth']
  end
end
