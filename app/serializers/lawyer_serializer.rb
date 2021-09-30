class LawyerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image, :specialty, :user_id

  has_many :appointments
  belongs_to :user
end
