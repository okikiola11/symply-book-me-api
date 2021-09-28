class Api::V1::AuthenticationController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    
    if (!user)
      render json: { error: 'Invalid username' }
    end

    if user.authenticate(params[:password])
      render json: { message: 'Correct password' }
    else
      render json: { message: 'Wrong password' }
    end
  end
end
