class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  has_many :lawyers

  validates :password, length: { in: 6..20 }, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 2 }
  validates_confirmation_of :password
end
