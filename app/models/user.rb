class User < ApplicationRecord
  has_secure_password
  has_secure_password :recovery_password, validations: false
  validates :names, :surnames, :email, :password, presence: true
  validates :email, uniqueness: true
end
