class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :tweets, foreign_key: :created_by
  # Validations
  validates_presence_of :userName, :email, :password_digest
end
