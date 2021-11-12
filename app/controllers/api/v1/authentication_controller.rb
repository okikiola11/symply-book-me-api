class Api::V1::AuthenticationController < ApplicationController
  def create
    @user = User.find_by(email: login_params[:email])

    if @user&.authenticate(login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }, except: [:password_digest], status: :ok
    else
      render json: { error: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end

  def destroy
    @current_user = nil
  end

  private

  def login_params
    params.require(:authentication).permit(:email, :password)
  end
end
