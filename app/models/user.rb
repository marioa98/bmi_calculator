class User < ApplicationRecord
  validates :names, :surnames, :email, :password, presence: true
	validates :email, uniqueness: true
end
