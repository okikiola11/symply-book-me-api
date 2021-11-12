class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :lawyer_id, :lawyer_name, :location, :appointed_date

  belongs_to :lawyer
  belongs_to :user
end
