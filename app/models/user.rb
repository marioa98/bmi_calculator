class User < ApplicationRecord
  has_secure_password
  validates :names, :surnames, :email, :password, presence: true
  validates :email, uniqueness: true
end
