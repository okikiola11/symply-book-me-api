class Lawyer < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :specialty, presence: true
  validates :location, presence: true

  has_many :appointments
end
