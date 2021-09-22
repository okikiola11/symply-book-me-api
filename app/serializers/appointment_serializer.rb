class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :lawyer_name, :location, :appointed_date

  belongs_to :lawyer
end
