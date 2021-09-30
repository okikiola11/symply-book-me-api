module Api
  module V1
    class AppointmentsController < ApplicationController
      before_action :authorize
      
      def index
        @appointments = Appointment.where(user_id: @current_user.id)
        if @appointments
          render :index
        else
          render json: 'No appointments yet'
        end
        # render json: { appointment: appointment }
      end

      def create
        appointment = Appointment.new(appointment_params)
        appointment.user_id = @current_user.id
        
        if appointment.save
          render json: { status: 'Success', message: 'Saved Appointment', data: appointment }, status: :ok
        else
          render json: { status: 'Error', message: 'appointment not saved', data: appointment.errors }, status: :unprocessable_entity
        end
      end

      private

      def appointment_params
        params.permit(:user_id, :lawyer_id, :lawyer_name, :location, :appointed_date)
      end
    end
  end
end