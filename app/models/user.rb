class User < ApplicationRecord
  has_secure_password
  
  validates :password, length: { in: 6..20 }, presence: true
  validates :email, presence: true
  validates :name, presence: true, length: { minimum: 2 }
end
