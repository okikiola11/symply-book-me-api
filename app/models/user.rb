class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  has_many :lawyers

  before_save { self.email = email.downcase }
  validates :password, length: { minimum: 6 }, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 2 }
  validates_confirmation_of :password
end
