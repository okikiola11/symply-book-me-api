class User < ApplicationRecord
  has_secure_password
  validates :password, length: { min: 7, max: 20 }
end
