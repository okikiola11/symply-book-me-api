class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image, :specialty

  has_many :appointments
end
