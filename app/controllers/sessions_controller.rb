class SessionsController < ApplicationController
  def create
    render json: auth_hash.to_json
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
