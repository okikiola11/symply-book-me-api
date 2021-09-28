class Api::V1::AuthenticationController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    
    unless user
      render json: { error: 'Invalid username' }, status: :unauthorized
    else
      if user.authenticate(params[:password])
        render json: { message: 'Correct password' }
      else
        render json: { error: 'Wrong password' },status: :unauthorized
      end
    end
  end
end
