class Lawyer < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :specialty, presence: true
  validates :location, presence: true

  has_many :appointments
  belongs_to :user
end
