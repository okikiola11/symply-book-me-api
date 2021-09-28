class Api::V1::AuthenticationController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    
    unless user
      render json: { error: 'Invalid username' }, status: :unauthorized
    else
      if user.authenticate(params[:password])
        secret_key = Rails.application.secrets.secret_key_base[0]
        token = JWT.encode(user, secret_key)

        render json: token
      else
        render json: { error: 'Wrong password' }, status: :unauthorized
      end
    end
  end
end
