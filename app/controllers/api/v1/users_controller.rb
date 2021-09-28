module Api
  module V1
    class UsersController < ApplicationController
      def create
        # Read in the user parameters
        user = User.new(user_params)

        if user.save
          render json: { status: 'Success', message: 'Saved User', data: user }, status: :ok
        else
          render json: { status: 'Error', message: 'user not saved', data: user.errors },
                status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password)
      end

    end
  end
end
