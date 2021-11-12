class Appointment < ApplicationRecord
  belongs_to :lawyer
  belongs_to :user

  # scope :user_appointments, -> { where(user_id: @current_user.id) }
end
