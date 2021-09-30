module Api
  module V1
    class AppointmentsController < ApplicationController
      def index
        appointment = Appointment.all
        render json: { appointment: appointment }
      end

      def create
        appointment = Appointment.new(appointment_params)
        
        if appointment.save
          render json: { status: 'Success', message: 'Saved User', data: appointment }, status: :ok
        else
          render json: { status: 'Error', message: 'appointment not saved', data: appointment.errors }, status: :unprocessable_entity
        end
      end

      private

      def appointment_params
        params.permit(:lawyer_name, :location, :appointed_date)
      end
    end
  end
end