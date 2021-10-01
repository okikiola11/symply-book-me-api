class Api::V1::AuthenticationController < ApplicationController
  # def login
  #   @user = User.find_by(email: params[:email])

  #   unless @user
  #     render json: { error: 'Invalid username' }, status: :unauthorized
  #   else
  #     if @user.authenticate(params[:password])
  #       secret_key = Rails.application.secrets.secret_key_base[0]
  #       token = JWT.encode({
  #         user_id: @user.id,
  #         email: @user.email,
  #       }, secret_key)

  #       render json: { user: @user, token: token }
  #     else
  #       render json: { error: 'Invalid password' }, status: :unauthorized
  #     end
  #   end
  # end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])

    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end
end
