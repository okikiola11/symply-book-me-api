module Api
  module V1
    class LawyersController < ApplicationController
      def index
        lawyers = Lawyer.order('created_at DESC')
        render json: { status: 'Success', message: 'Loaded all lawyers', data: lawyers }, status: :ok
      end

      def show
        lawyer = Lawyer.find(params[:id])
        render json: { status: 'Success', message: 'Loaded lawyer', data: lawyer }, status: :ok
      end

      def create
        lawyer = Lawyer.new(lawyer_params)

        if lawyer.save
          render json: { status: 'Success', message: 'Saved Lawyer', data: lawyer }, status: :ok
        else
          render json: { status: 'Error', message: 'Lawyer not saved', data: lawyer.errors }, status: :unprocessable_entity
        end
      end

      def update
        lawyer = Lawyer.find(params[:id])
        if lawyer.update_attributes(lawyer_params)
          render json: { status: 'Success', message: 'Lawyer updated', data: lawyer }, status: :ok
        else
          render json: { status: 'Error', message: 'Unable to update Lawyer', data: lawyer.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        lawyer = Lawyer.find(params[:id])
        lawyer.destroy
        render json: { status: 'Success', message: 'Lawyer has been deleted', data: lawyer }, status: :ok
      end

      private

      def lawyer_params
        params.permit(:name, :specialty, :location, :image)
      end
    end
  end
end
