module Api
  module V1
    class UsersController < ApplicationController
      before_action :authorize, only: [:show]

      def create
        @user = User.create!(user_params)

        if @user.valid?
          token = encode_token({ user_id: @user.id })
          render json: { user: @user, token: token }, status: :ok
        else
          render json: { status: 'Error', message: 'user not saved', data: @user.errors }, status: :unprocessable_entity
        end
      end

      def show
        render json: @current_user
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
    end
  end
end
